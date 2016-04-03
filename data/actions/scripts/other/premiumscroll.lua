function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	player:addPremiumDays(15)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have received 15 premium days.")
	item:remove(1)
	return true
end
