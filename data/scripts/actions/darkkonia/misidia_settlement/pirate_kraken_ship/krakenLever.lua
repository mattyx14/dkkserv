local config = {
	bossName = "Kraken Head",
	requiredLevel = 200,
	leverId = 5670,
	timeToFightAgain = 20, -- In hour
	timeToDefeatBoss = 20, -- In minutes
	clearRoomTime = 20, -- In minutes
	timer = DarkKonia.OutfitQuest.KrakenTimmer,
	blockLever = true,
	value = 1,
	centerRoom = Position(1054, 30, 12),
	playerPositions = {
		Position(1129, 67, 12),
		Position(1127, 67, 12),
		Position(1128, 67, 12),
		Position(1130, 67, 12),
		Position(1131, 67, 12),
		Position(1128, 68, 12),
		Position(1129, 68, 12),
		Position(1130, 68, 12),
	},
	teleportPosition = Position(1044, 33, 12),
	bossPosition = Position(1052, 30, 12),
	kickPos = Position(1081, 95, 7)
}

local monsters = {
	{tentacle = 'tentacle 1', pos = Position(1046, 26, 12)},
	{tentacle = 'tentacle 2', pos = Position(1053, 25, 12)},
	{tentacle = 'tentacle 3', pos = Position(1058, 30, 12)},
	{tentacle = 'tentacle 4', pos = Position(1051, 33, 12)},
	{tentacle = 'tentacle 5', pos = Position(1055, 34, 12)}
}

local theKrakenLever = Action()
function theKrakenLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == config.leverId then
		-- Check if the player that pulled the lever is on the correct position
		if player:getPosition() ~= config.playerPositions[1] then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You can\'t start the battle.")
			return true
		end

		local team, participant = {}
		for i = 1, #config.playerPositions do
			participant = Tile(config.playerPositions[i]):getTopCreature()

			-- Check there is a participant player
			if participant and participant:isPlayer() then
				-- Check participant level
				if participant:getLevel() < config.requiredLevel then
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "All the players need to be level ".. config.requiredLevel .." or higher.")
					return true
				end

				-- Check participant boss timer
				if config.blockLever and participant:getStorageValue(config.timer) > os.time() then
					player:getPosition():sendMagicEffect(CONST_ME_POFF)
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You or a member in your team have to wait ".. config.timeToFightAgain .." hours to face ".. config.bossName .." again!")
					return true
				end
				team[#team + 1] = participant
			end
		end

		-- Check if a team currently inside the boss room
		local specs, spec = Game.getSpectators(config.centerRoom, false, false, 14, 14, 13, 13)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "There's someone fighting with ".. config.bossName ..".")
				return true
			end
			spec:remove()
		end

		-- One hour for clean the room
		addEvent(clearRoom, config.clearRoomTime * 60 * 1000, config.centerRoom)
		Game.createMonster(config.bossName, config.bossPosition)
		for n = 1, #monsters do
			Game.createMonster(monsters[n].tentacle, monsters[n].pos, true, true)
		end

		-- Teleport team participants
		for i = 1, #team do
			team[i]:getPosition():sendMagicEffect(CONST_ME_POFF)
			team[i]:teleportTo(config.teleportPosition)
			team[i]:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have ".. config.timeToDefeatBoss .." minutes to kill and loot this boss. Otherwise you will lose that chance and will be kicked out.")
			-- Assign boss timer
			team[i]:setStorageValue(config.timer, os.time() + config.timeToFightAgain * 60 * 60) -- 20 hours
			item:transform(config.leverId)
			
				addEvent(function()
					local specs, spec = Game.getSpectators(config.centerRoom, false, false, 14, 14, 13, 13)
						for i = 1, #specs do
							spec = specs[i]
							if spec:isPlayer() then
								spec:teleportTo(config.kickPos)
								spec:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
								spec:say("Time is over! You were defeated by The Kraken you were forced to leave.", TALKTYPE_MONSTER_SAY)
							end
						end
				end, config.timeToDefeatBoss * 60 * 1000)
		end
	end
	return true
end

theKrakenLever:aid(24924)
theKrakenLever:register()
