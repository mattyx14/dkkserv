local config = {
	{fromPos = Position(937, 993, 7), toPos = Position(948, 1002, 7), townId = 1} -- Fynn
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local playerPos, isInTemple, temple, townId = player:getPosition(), false
	for i = 1, #config do
		temple = config[i]
		if isInRange(playerPos, temple.fromPos, temple.toPos) then
			if Tile(playerPos):hasFlag(TILESTATE_PROTECTIONZONE) then
				isInTemple, townId = true, temple.townId
				break
			end
		end
	end

	if not isInTemple then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Try to move more to the center of a temple to use the spiritual energy for a teleport.')
		return true
	end

	player:setStorageValue(Storage.AdventurersGuild.Stone, townId)
	playerPos:sendMagicEffect(CONST_ME_TELEPORT)

	local destination = Position(926, 982, 3)
		player:teleportTo(destination)
		destination:sendMagicEffect(CONST_ME_TELEPORT)
	return true
end
