local config = {
	bossName = 'Lady Tenebris',
	centerRoom = Position(1126, 1032, 15),
	BossPosition = Position(1126, 1030, 15),
	newPosition = Position(1126, 1040, 15), -- Send Player to new Positions
}

local function clearTenebris()
	local spectators = Game.getSpectators(config.centerRoom, false, false, 15, 15, 15, 15)
	for i = 1, #spectators do
		local spectator = spectators[i]
		if spectator:isPlayer() then
			spectator:teleportTo(Position(1075, 989, 15)) -- Kick Potition
			spectator:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			spectator:say('Time out! You were teleported out by strange forces.', TALKTYPE_MONSTER_SAY)
		elseif spectator:isMonster() then
			spectator:remove()
		end
	end
	Game.setStorageValue(Storage.ForgottenKnowledge.LadyTenebrisTimer, 0)
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 9825 then
		if player:getPosition() ~= Position(1127, 1083, 15) then -- Lever Main Position
			item:transform(9826)
			return true
		end
	end

	if item.itemid == 9825 then
		if Game.getStorageValue(Storage.ForgottenKnowledge.LadyTenebrisTimer) >= 1 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to wait a while, recently someone challenge Lady Tenebris.")
			return true
		end

		local specs, spec = Game.getSpectators(config.centerRoom, false, false, 15, 15, 15, 15)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Someone is fighting with Lady Tenebris.")
				return true
			end
		end

		for d = 1, 6 do
			Game.createMonster('shadow tentacle', Position(math.random(1123, 1129), math.random(1029, 1035), 15), true, true)
		end

		Game.createMonster(config.bossName, config.BossPosition, true, true)

		for x = 1125, 1129 do
			local playerTile = Tile(Position(x, 1083, 15)):getTopCreature()
			if playerTile and playerTile:isPlayer() then
				playerTile:getPosition():sendMagicEffect(CONST_ME_POFF)
				playerTile:teleportTo(config.newPosition)
				playerTile:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
				playerTile:setExhaustion(Storage.ForgottenKnowledge.LadyTenebrisTimer, 20 * 60 * 60)
			end
		end
		Game.setStorageValue(Storage.ForgottenKnowledge.LadyTenebrisTimer, 1)
		addEvent(clearTenebris, 20 * 60 * 1000)
		item:transform(9826)
	elseif item.itemid == 9826 then
		item:transform(9825)
	end

	return true
end
