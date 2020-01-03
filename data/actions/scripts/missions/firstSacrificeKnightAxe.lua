function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if target.actionid ~= 9007 then
		return false
	end

	if player:getStorageValue(Storage.FirstSacrifice.noSacrifice.axeKnight) ~= 1 then
		player:removeItem(2434, 1)
		player:setStorageValue(Storage.FirstSacrifice.noSacrifice.axeKnight, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You discovered a new passage.")
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have already discovered this secret.")
	end
	return true
end
