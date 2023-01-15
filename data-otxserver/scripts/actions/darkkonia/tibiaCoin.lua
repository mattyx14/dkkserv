local tibiaCoin = Action()
function tibiaCoin.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	player:addTibiaCoins(250)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have received 250 Tibia Coins')
	item:remove(1)
	player:save()
	return true
end

tibiaCoin:id(22118)
tibiaCoin:register()
