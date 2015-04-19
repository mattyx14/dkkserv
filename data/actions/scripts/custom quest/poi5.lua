-- poi4 Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 5795 then
  queststatus = getPlayerStorageValue(cid,6297)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a X Boots of Haste.")
   item_uid = doPlayerAddItem(cid,6297,1)
   setPlayerStorageValue(cid,6297,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

