local chests = {
	[9012] = {itemid = 7404, count = 1},
	[9013] = {itemid = 15451, count = 1},
	[9014] = {itemid = 7426, count = 1},
	[9015] = {itemid = 2542, count = 1}
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if chests[item.uid] then
		if player:getStorageValue(Storage.Missions.DjinnMission.Done) ~= 1 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'It\'s empty.')
			return true
		end

		local chest = chests[item.uid]
		local itemType = ItemType(chest.itemid)
		if itemType then
			local article = itemType:getArticle()
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You have found ' .. (#article > 0 and article .. ' ' or '') .. itemType:getName() .. '.')
		end

		player:addItem(chest.itemid, chest.count)
		player:setStorageValue(Storage.Missions.DjinnMission.Done, 1)
	end

	return true
end
