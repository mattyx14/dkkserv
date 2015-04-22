function onUse(cid, item, frompos, item2, topos)
	if item.uid == 50005 then
		queststatus = getPlayerStorageValue(cid, 50005)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Shaman outfit.")
			item_uid = doPlayerAddItem(cid, 3961, 1)
			item_uid = doPlayerAddItem(cid, 3982, 1)
			item_uid = doPlayerAddItem(cid, 2501, 1)
			setPlayerStorageValue(cid, 50005, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It\'s empty.")
		end
	else
		return false
	end

	return true
end
