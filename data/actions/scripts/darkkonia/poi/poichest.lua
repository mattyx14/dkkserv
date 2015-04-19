-- demon oak chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 8857 then
   		queststatus = getPlayerStorageValue(cid,30028)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Brotherhood outfit.")
   			doPlayerAddItem(cid,8857,1)
   			setPlayerStorageValue(cid,30028,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7422 then
   		queststatus = getPlayerStorageValue(cid,30028)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Brotherhood outfit.")
   			doPlayerAddItem(cid,7422,1)
   			setPlayerStorageValue(cid,30028,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 6528 then
   		queststatus = getPlayerStorageValue(cid,30028)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Brotherhood outfit.")
   			doPlayerAddItem(cid,6528,1)
   			setPlayerStorageValue(cid,30028,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 7454 then
   		queststatus = getPlayerStorageValue(cid,30028)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Brotherhood outfit.")
   			doPlayerAddItem(cid,7454,1)
   			setPlayerStorageValue(cid,30028,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 8901 then
   		queststatus = getPlayerStorageValue(cid,30028)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Brotherhood outfit.")
   			doPlayerAddItem(cid,8901,1)
   			setPlayerStorageValue(cid,30028,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
