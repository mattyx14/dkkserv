-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 5016 then
   		queststatus = getPlayerStorageValue(cid,8010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Thunder Hammer.")
   			doPlayerAddItem(cid,6703,1)
   			setPlayerStorageValue(cid,8010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5017 then
   		queststatus = getPlayerStorageValue(cid,8010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Stonecutter Axe.")
   			doPlayerAddItem(cid,6699,1)
   			setPlayerStorageValue(cid,8010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5018 then
   		queststatus = getPlayerStorageValue(cid,8010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demon Sword.")
   			doPlayerAddItem(cid,6683,1)
   			setPlayerStorageValue(cid,8010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5019 then
   		queststatus = getPlayerStorageValue(cid,8010)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Golden Arrow.")
   			doPlayerAddItem(cid,6628,1)
   			setPlayerStorageValue(cid,8010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
