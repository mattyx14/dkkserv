local config = {
	bossName = 'Jaul',
	centerRoom = Position(1143, 558, 15),
	storage = Storage.HidenChest.deaplingOutfit,
	value = 1,
	range = 15, 
	timer = Storage.MisidiaQuest.JaulTimer,
	BossPosition = Position(1143, 559, 15),
	newPosition = Position(1149, 558, 15), -- Send Player to new Positions
}

local function clearJaul()
	local spectators = Game.getSpectators(config.centerRoom, false, false, 15, 15, 15, 15)
	for i = 1, #spectators do
		local spectator = spectators[i]
		if spectator:isPlayer() and spectator.uid == playerId then
			spectator:teleportTo(Position(1138, 472, 14)) -- Kick Potition
			spectator:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			spectator:say('Time out! You were teleported out by strange forces.', TALKTYPE_MONSTER_SAY)
		end

		if spectator:isMonster() then
			spectator:remove()
		end
	end
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 9825 then
		if player:getPosition() ~= Position(1143, 456, 14) then -- Lever Main Position
			return true
		end
	end

	if item.itemid == 9825 then
		if player:getStorageValue(config.storage) < config.value then
			player:say('You don\'t have permission to use this lever', TALKTYPE_MONSTER_SAY)
			return true
		end

		if player:getExhaustion(config.timer) > 0 then
			player:say('You have to wait to challange this enemy again!', TALKTYPE_MONSTER_SAY)
			return true
		end

		if roomIsOccupied(config.BossPosition, config.range, config.range) then
			player:say('Someone is fighting against the boss! You need wait awhile.', TALKTYPE_MONSTER_SAY)
			return true
		end
		clearRoom(config.BossPosition, config.range, config.range, fromPosition)
		for d = 1, 6 do
			Game.createMonster('deepling tyrant', Position(math.random(1134, 1147), math.random(550, 568), 15), true, true)
		end
		local monster = Game.createMonster(config.bossName, config.BossPosition, true, true)
		if not monster then
			return true
		end

		player:teleportTo(config.newPosition)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:say('You have twenty minutes to kill and loot this boss. Otherwise you will lose that chance and will be kicked out.', TALKTYPE_MONSTER_SAY)
		addEvent(clearJaul, 60 * 20 * 1000, player.uid, monster.uid, teleport.bossPos, teleport.range, teleport.range, fromPosition)
		player:setExhaustion(config.timer, 20 * 60 * 60)
		return true
	end
end
