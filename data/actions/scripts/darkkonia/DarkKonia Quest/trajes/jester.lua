function onUse(cid, item, frompos, item2, topos)
if item.uid == 30027 then
  queststatus = getPlayerStorageValue(cid,30027)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Jester outfit.")
   item_uid = doPlayerAddItem(cid,7957,1)
   item_uid = doPlayerAddItem(cid,7958,1)
   setPlayerStorageValue(cid,30027,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

