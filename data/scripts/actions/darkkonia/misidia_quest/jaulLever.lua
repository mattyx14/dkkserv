local config = {
	bossName = "Jaul",
	requiredLevel = 250,
	leverId = 9825,
	timeToFightAgain = 20, -- In hour
	timeToDefeatBoss = 20, -- In minutes
	clearRoomTime = 20, -- In minutes
	storage = Storage.HidenChest.deaplingOutfit,
	timer = Storage.MisidiaQuest.JaulTimer,
	daily = true,
	value = 1,
	centerRoom = Position(1143, 558, 15),
	playerPositions = {
		Position(1143, 456, 14),
		Position(1142, 456, 14),
		Position(1141, 456, 14),
		Position(1144, 456, 14),
		Position(1145, 456, 14)
	},
	teleportPosition = Position(1149, 558, 15),
	bossPosition = Position(1143, 559, 15),
	kickPos = Position(1138, 472, 14)
}

local jaulLever = Action()
function jaulLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(config.storage) < config.value then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "All the players need find the hidden tesuare here on Sunken Sanctuary.")
		return true
	end

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
				if config.daily and participant:getStorageValue(config.timer) > os.time() then
					player:getPosition():sendMagicEffect(CONST_ME_POFF)
					player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You or a member in your team have to wait ".. config.timeToFightAgain .."  hours to face ".. config.bossName .." again!")
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
								spec:say("Time out! You were teleported out by strange forces.", TALKTYPE_MONSTER_SAY)
							end
						end
				end, config.timeToDefeatBoss * 60 * 1000)
		end
	end
	return true
end

jaulLever:aid(24879)
jaulLever:register()
