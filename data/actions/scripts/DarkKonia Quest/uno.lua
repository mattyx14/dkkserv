function onUse(cid, item, frompos, item2, topos)
if item.uid == 15889 then
  queststatus = getPlayerStorageValue(cid,15889)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Armor made in worship of an ancient leader.")
   item_uid = doPlayerAddItem(cid,16036,1)
   setPlayerStorageValue(cid,15889,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

