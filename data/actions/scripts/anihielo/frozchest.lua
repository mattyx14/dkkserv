-- demon oak chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 8903 then
   		queststatus = getPlayerStorageValue(cid,30025)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Norsewoman and Norseman outfit.")
   			doPlayerAddItem(cid,8903,1)
   			setPlayerStorageValue(cid,30025,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7777 then
   		queststatus = getPlayerStorageValue(cid,30025)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Norsewoman and Norseman outfit.")
   			doPlayerAddItem(cid,7777,1)
   			setPlayerStorageValue(cid,30025,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 8858 then
   		queststatus = getPlayerStorageValue(cid,30025)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Norsewoman and Norseman outfit.")
   			doPlayerAddItem(cid,8858,1)
   			setPlayerStorageValue(cid,30025,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7765 then
   		queststatus = getPlayerStorageValue(cid,30025)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Norsewoman and Norseman outfit.")
   			doPlayerAddItem(cid,7765,1)
   			setPlayerStorageValue(cid,30025,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7772 then
   		queststatus = getPlayerStorageValue(cid,30025)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Norsewoman and Norseman outfit.")
   			doPlayerAddItem(cid,7772,1)
   			setPlayerStorageValue(cid,30025,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
