-- demon oak chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 2415 then
   		queststatus = getPlayerStorageValue(cid,30029)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demon Hunter outfit.")
   			doPlayerAddItem(cid,2415,1)
   			setPlayerStorageValue(cid,30029,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 2390 then
   		queststatus = getPlayerStorageValue(cid,30029)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demon Hunter outfit.")
   			doPlayerAddItem(cid,2390,1)
   			setPlayerStorageValue(cid,30029,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 2453 then
   		queststatus = getPlayerStorageValue(cid,30029)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demon Hunter outfit.")
   			doPlayerAddItem(cid,2453,1)
   			setPlayerStorageValue(cid,30029,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 8854 then
   		queststatus = getPlayerStorageValue(cid,30029)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demon Hunter outfit.")
   			doPlayerAddItem(cid,8854,1)
   			setPlayerStorageValue(cid,30029,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 8918 then
   		queststatus = getPlayerStorageValue(cid,30029)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demon Hunter outfit.")
   			doPlayerAddItem(cid,8918,1)
   			setPlayerStorageValue(cid,30029,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
