-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 5024 then
   		queststatus = getPlayerStorageValue(cid,5021)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a X Boots Of Haste.")
   			doPlayerAddItem(cid,6639,1)
   			setPlayerStorageValue(cid,5021,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5025 then
   		queststatus = getPlayerStorageValue(cid,5021)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Avenger.")
   			doPlayerAddItem(cid,6630,1)
   			setPlayerStorageValue(cid,5021,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5026 then
   		queststatus = getPlayerStorageValue(cid,5021)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Predator Armor.")
   			doPlayerAddItem(cid,6624,1)
   			setPlayerStorageValue(cid,5021,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5027 then
   		queststatus = getPlayerStorageValue(cid,5021)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demonic Axe.")
   			doPlayerAddItem(cid,6587,1)
   			setPlayerStorageValue(cid,5021,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
