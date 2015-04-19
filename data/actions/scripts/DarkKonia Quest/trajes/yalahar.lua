function onUse(cid, item, frompos, item2, topos)
if item.uid == 30030 then
  queststatus = getPlayerStorageValue(cid,30030)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Yalaharian outfit.")
   item_uid = doPlayerAddItem(cid,9776,1)
   item_uid = doPlayerAddItem(cid,9777,1)
   item_uid = doPlayerAddItem(cid,9778,1)
   setPlayerStorageValue(cid,30030,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

