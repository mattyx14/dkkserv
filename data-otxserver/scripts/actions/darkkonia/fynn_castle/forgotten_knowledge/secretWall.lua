local sacretWall = Action()
function sacretWall.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.actionid == 24877 then
		player:teleportTo(Position(1072, 964, 15))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end

	if not player:getItemById(23738, true) then
		return false
	end

	if player:getStorageValue(DarkKonia.ForgottenKnowledge.SilverKey) < 1 or not player:getItemById(23733, true) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You don't have the fitting key.")
		return true
	end

	player:teleportTo(Position(1095, 1080, 15))
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end

sacretWall:aid(24876, 24877)
sacretWall:register()
