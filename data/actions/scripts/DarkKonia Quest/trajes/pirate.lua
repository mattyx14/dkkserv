function onUse(cid, item, frompos, item2, topos)
if item.uid == 6096 then
  queststatus = getPlayerStorageValue(cid,30021)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Pirate OutFit.")
   item_uid = doPlayerAddItem(cid,6096,1)
   setPlayerStorageValue(cid,30021,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

