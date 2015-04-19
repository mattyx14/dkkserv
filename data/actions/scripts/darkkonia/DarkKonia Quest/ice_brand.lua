function onUse(cid, item, frompos, item2, topos)
if item.uid == 15847 then
  queststatus = getPlayerStorageValue(cid,15847)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Icy Brand.")
   item_uid = doPlayerAddItem(cid,15994,1)
   setPlayerStorageValue(cid,15847,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

