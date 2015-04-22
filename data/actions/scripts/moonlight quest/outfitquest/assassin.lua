function onUse(cid, item, frompos, item2, topos)
	if item.uid == 50003 then
		queststatus = getPlayerStorageValue(cid, 50003)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Assassin outfit.")
			item_uid = doPlayerAddItem(cid, 7755, 1)
			item_uid = doPlayerAddItem(cid, 7879, 1)
			item_uid = doPlayerAddItem(cid, 10305, 1)
			setPlayerStorageValue(cid, 50003, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It\'s empty.")
		end
	else
		return false
	end

	return true
end
