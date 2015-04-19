function onUse(cid, item, frompos, item2, topos)
if item.uid == 16099 then
  queststatus = getPlayerStorageValue(cid,16099)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Master Magician Staff.")
   item_uid = doPlayerAddItem(cid,16099,1)
   setPlayerStorageValue(cid,16099,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

