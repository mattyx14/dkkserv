-- Ferumbras Hat Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 5715 then
  queststatus = getPlayerStorageValue(cid,5715)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a 100 Crystal Coins.")
   item_uid = doPlayerAddItem(cid,2160,100)
   setPlayerStorageValue(cid,5715,100)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

