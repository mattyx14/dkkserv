function onUse(cid, item, frompos, item2, topos)
	if item.uid == 50001 then
		queststatus = getPlayerStorageValue(cid, 50001)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Oriental outfit.")
			item_uid = doPlayerAddItem(cid, 5917, 1)
			setPlayerStorageValue(cid, 50001, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It\'s empty.")
		end
	else
		return false
	end

	return true
end
