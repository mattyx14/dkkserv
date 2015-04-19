-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 5020 then
   		queststatus = getPlayerStorageValue(cid,6681)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demon Helmet.")
   			doPlayerAddItem(cid,6681,1)
   			setPlayerStorageValue(cid,6681,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5021 then
   		queststatus = getPlayerStorageValue(cid,2160)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demon Axe.")
   			doPlayerAddItem(cid,2160,100)
   			setPlayerStorageValue(cid,2160,100)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5022 then
   		queststatus = getPlayerStorageValue(cid,6669)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Ancient Sword.")
   			doPlayerAddItem(cid,6669,1)
   			setPlayerStorageValue(cid,6669,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5023 then
   		queststatus = getPlayerStorageValue(cid,6648)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Evil Staff.")
   			doPlayerAddItem(cid,6648,1)
   			setPlayerStorageValue(cid,6648,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
