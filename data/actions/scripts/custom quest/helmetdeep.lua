
function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 2425 then
   		queststatus = getPlayerStorageValue(cid,2425)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found an Helmet Of The Deep.")
   			doPlayerAddItem(cid,5461,1)
   			setPlayerStorageValue(cid,2425,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	else
		return 0
   	end
   	return 1
end
