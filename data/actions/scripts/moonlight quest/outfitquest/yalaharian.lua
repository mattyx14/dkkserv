function onUse(cid, item, frompos, item2, topos)
	if item.uid == 50011 then
		queststatus = getPlayerStorageValue(cid, 50011)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a yalaharian outfit.")
			item_uid = doPlayerAddItem(cid, 9776, 1)
			item_uid = doPlayerAddItem(cid, 9777, 1)
			item_uid = doPlayerAddItem(cid, 9778, 1)
			setPlayerStorageValue(cid, 50011, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It\'s empty.")
		end
	else
		return false
	end

	return true
end
