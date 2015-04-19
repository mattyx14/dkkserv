function onUse(cid, item, frompos, item2, topos)
if item.uid == 8887 then
  queststatus = getPlayerStorageValue(cid,8887)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Frozen Plate Armor.")
   item_uid = doPlayerAddItem(cid,8887,1)
   setPlayerStorageValue(cid,8887,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

