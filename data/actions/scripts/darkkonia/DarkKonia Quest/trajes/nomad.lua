function onUse(cid, item, frompos, item2, topos)
if item.uid == 5917 then
  queststatus = getPlayerStorageValue(cid,30020)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Oriental outfit.")
   item_uid = doPlayerAddItem(cid,5917,1)
   setPlayerStorageValue(cid,30020,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

