function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	player:addPremiumDays(6)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You gain 6 premium days time.')
	player:save()
	item:remove(1)
	return true
end
