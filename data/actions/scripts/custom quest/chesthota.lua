
function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 5010 then
   		queststatus = getPlayerStorageValue(cid,5011)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Golden Armor.")
   			doPlayerAddItem(cid,2466,1)
   			setPlayerStorageValue(cid,5010,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5011 then
   		queststatus = getPlayerStorageValue(cid,5011)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Demon Shield.")
   			doPlayerAddItem(cid,2520,1)
   			setPlayerStorageValue(cid,5011,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end
   	return 1
end
