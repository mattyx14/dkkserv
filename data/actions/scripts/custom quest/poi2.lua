-- poi4 Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 5792 then
  queststatus = getPlayerStorageValue(cid,6306)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Dragon Sword.")
   item_uid = doPlayerAddItem(cid,6306,1)
   setPlayerStorageValue(cid,6306,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

