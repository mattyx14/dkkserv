local premiumScroll = Action()
function premiumScroll.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	player:addPremiumDays(30)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You gain 30 premium days time.')
	item:remove(1)
	player:save()
	return true
end

premiumScroll:id(14758)
premiumScroll:register()
