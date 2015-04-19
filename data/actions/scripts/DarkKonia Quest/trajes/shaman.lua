function onUse(cid, item, frompos, item2, topos)
if item.uid == 3982 then
  queststatus = getPlayerStorageValue(cid,30024)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Shaman outfit.")
   item_uid = doPlayerAddItem(cid,3961,1)
   item_uid = doPlayerAddItem(cid,2501,1)
   item_uid = doPlayerAddItem(cid,3982,1)
   setPlayerStorageValue(cid,30024,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

