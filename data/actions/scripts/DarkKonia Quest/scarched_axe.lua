function onUse(cid, item, frompos, item2, topos)
if item.uid == 15739 then
  queststatus = getPlayerStorageValue(cid,15739)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Scarched Axe.")
   item_uid = doPlayerAddItem(cid,15886,1)
   setPlayerStorageValue(cid,15739,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

