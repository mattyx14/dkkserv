function onUse(cid, item, frompos, item2, topos)
if item.uid == 15831 then
  queststatus = getPlayerStorageValue(cid,15831)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a DarkNess Legs.")
   item_uid = doPlayerAddItem(cid,16040,1)
   setPlayerStorageValue(cid,15831,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

