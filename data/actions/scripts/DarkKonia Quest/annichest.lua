-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 2400 then
   		queststatus = getPlayerStorageValue(cid,5015)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Magic Sword.")
   			doPlayerAddItem(cid,2400,1)
   			setPlayerStorageValue(cid,5015,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 2421 then
   		queststatus = getPlayerStorageValue(cid,5015)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Thunder Hammer.")
   			doPlayerAddItem(cid,2421,1)
   			setPlayerStorageValue(cid,5015,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 2431 then
   		queststatus = getPlayerStorageValue(cid,5015)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Stonecutter Axe.")
   			doPlayerAddItem(cid,2431,1)
   			setPlayerStorageValue(cid,5015,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 15880 then
   		queststatus = getPlayerStorageValue(cid,5015)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Perseus Arrow.")
   			doPlayerAddItem(cid,16027,1)
   			setPlayerStorageValue(cid,5015,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
