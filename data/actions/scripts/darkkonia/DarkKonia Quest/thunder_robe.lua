function onUse(cid, item, frompos, item2, topos)
if item.uid == 15884 then
  queststatus = getPlayerStorageValue(cid,15884)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Thunder Robe.")
   item_uid = doPlayerAddItem(cid,16031,1)
   setPlayerStorageValue(cid,15884,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

