function onUse(cid, item, frompos, item2, topos)
	if item.uid == 50008 then
		queststatus = getPlayerStorageValue(cid, 50008)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Jester outfit.")
			item_uid = doPlayerAddItem(cid, 7957, 1)
			item_uid = doPlayerAddItem(cid, 7958, 1)
			setPlayerStorageValue(cid, 50008, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It\'s empty.")
		end
	else
		return false
	end

	return true
end
