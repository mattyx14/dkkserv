local bone_BlackKnight = Action()
function bone_BlackKnight.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(Storage.ElficVille.BlackKnightKilled) < 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You don\'t killed a Black Knight.')
		return true
	end

	if player:getStorageValue(2487) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		return true
	end

	player:addItem(2487, 1)
	player:addItem(2488, 1)
	player:addItem(2491, 1)
	player:addItem(2519, 1)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You found a crown set.")
	player:setStorageValue(2487, 1)
	return true
end

bone_BlackKnight:aid(2487)
bone_BlackKnight:register()
