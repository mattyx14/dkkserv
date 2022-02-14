local bone_BlackKnight = Action()
function bone_BlackKnight.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(DarkKonia.ElficVille.BlackKnightKilled) < 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You don\'t killed a Black Knight.')
		return true
	end

	if player:getStorageValue(3381) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		return true
	end

	player:addItem(3381, 1)
	player:addItem(3382, 1)
	player:addItem(3385, 1)
	player:addItem(3419, 1)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You found a crown set.")
	player:setStorageValue(3381, 1)
	return true
end

bone_BlackKnight:aid(3381)
bone_BlackKnight:register()
