local config = {
	timer = Storage.ForgottenKnowledge.LadyTenebrisTimer,
	range = 15, 
	newPos = Position(1054, 1019, 15), -- Player Position BossArea
	bossName = 'Lady Tenebris', 
	bossPos = Position(1051, 1010, 15),
	exitPosition = Position(1075, 989, 15)
}

local function clearTenebris()
	local spectators = Game.getSpectators(config.bossPos, false, false, 15, 15, 15, 15)
	for i = 1, #spectators do
		local spectator = spectators[i]
		if spectator:isPlayer() then
			spectator:teleportTo(Position(1049, 1030, 15)) -- Star Potition Lever
			spectator:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			spectator:say('Time out! You were teleported out by strange forces.', TALKTYPE_MONSTER_SAY)
		elseif spectator:isMonster() then
			spectator:remove()
		end
	end
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 9825 and item.actionid == 24878 then
		if player:getPosition() ~= Position(1051, 1035, 15) then -- Lever Main Potition
			return true
		end

		for x = 1049, 1035 do
			local playerTile = Tile(Position(x, 1035, 15)):getTopCreature()
			if playerTile and playerTile:isPlayer() and playerTile:getExhaustion(config.timer) > 0 then
				player:say('You or a member of your team have to wait 20 hours to challange Lady Tenebris again!', TALKTYPE_MONSTER_SAY)
				return true
			end
		end

		if roomIsOccupied(config.bossPos, config.range, config.range) then
			player:say('Someone is fighting against the boss! You need wait awhile.', TALKTYPE_MONSTER_SAY)
			return true
		end

		for x = 1049, 1035 do
			local playerTile = Tile(Position(x, 1035, 15)):getTopCreature()
			if playerTile and playerTile:isPlayer() then
				playerTile:getPosition():sendMagicEffect(CONST_ME_POFF)
				playerTile:teleportTo(config.newPos)
				playerTile:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
				playerTile:setExhaustion(config.timer, 20 * 60 * 60) -- 20 hrs cooldown
				playerTile:say('You have 30 minutes to kill and loot this boss. Otherwise you will lose that chance and will be kicked out.', TALKTYPE_MONSTER_SAY)
				addEvent(clearTenebris, 30 * 60 * 1000, Position(1041, 1000, 15), Position(1062, 1000, 15), Position(1062, 1021, 15), config.exitPosition) -- 30 mins time battle
			end
		end

		local spectators = Game.getSpectators(config.bossPos, false, false, 15, 15, 15, 15)
		for i = 1, #spectators do
			local spectator = spectators[i]
			if spectator:isMonster() then
				spectator:remove()
			end
		end

		for d = 1, 6 do
			Game.createMonster('shadow tentacle', Position(math.random(1048, 1007), math.random(1055, 1013), 14), true, true)
		end

		Game.createMonster(config.bossName, config.bossPos, true, true)
		item:transform(9826)
	elseif item.itemid == 9826 then
		item:transform(9825)
	end

	return true
end
