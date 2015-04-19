function onUse(cid, item, frompos, item2, topos)
if item.uid == 15748 then
  queststatus = getPlayerStorageValue(cid,15748)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Ice Shield.")
   item_uid = doPlayerAddItem(cid,15895,1)
   setPlayerStorageValue(cid,15748,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

