-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 2400 then
   		queststatus = getPlayerStorageValue(cid,5015)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Killer Bow.")
   			doPlayerAddItem(cid,7585,1)
   			setPlayerStorageValue(cid,5015,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 2421 then
   		queststatus = getPlayerStorageValue(cid,5015)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Dark Helm.")
   			doPlayerAddItem(cid,7589,1)
   			setPlayerStorageValue(cid,5015,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 2431 then
   		queststatus = getPlayerStorageValue(cid,5015)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Crusader Shield.")
   			doPlayerAddItem(cid,7534,1)
   			setPlayerStorageValue(cid,5015,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 15880 then
   		queststatus = getPlayerStorageValue(cid,5015)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a XBoots of Haste.")
   			doPlayerAddItem(cid,7523,1)
   			setPlayerStorageValue(cid,5015,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
