-- Ferumbras Hat Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 5716 then
  queststatus = getPlayerStorageValue(cid,5716)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a 25 Crystal Coins.")
   item_uid = doPlayerAddItem(cid,2160,25)
   setPlayerStorageValue(cid,5716,25)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

