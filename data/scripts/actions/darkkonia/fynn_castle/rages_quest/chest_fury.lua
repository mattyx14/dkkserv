local furyQuest = Action()
function furyQuest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if (player:getStorageValue(DarkKonia.HidenChest.magmaSet) == 1) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		return true
	end

	player:addItem(826, 1)
	player:addItem(821, 1)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You found a magma set.")
	player:setStorageValue(DarkKonia.HidenChest.magmaSet, 1)
	return true
end

furyQuest:aid(30192)
furyQuest:register()
