-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 6791 then
   		queststatus = getPlayerStorageValue(cid,15)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Stone Legs.")
   			doPlayerAddItem(cid,6615,1)
   			setPlayerStorageValue(cid,15,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 6792 then
   		queststatus = getPlayerStorageValue(cid,16)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Hero Armor.")
   			doPlayerAddItem(cid,6595,1)
   			setPlayerStorageValue(cid,16,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 6793 then
   		queststatus = getPlayerStorageValue(cid,17)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Hero Shield.")
   			doPlayerAddItem(cid,6613,1)
   			setPlayerStorageValue(cid,17,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
