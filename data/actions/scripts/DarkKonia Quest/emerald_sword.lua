function onUse(cid, item, frompos, item2, topos)
if item.uid == 8836 then
  queststatus = getPlayerStorageValue(cid,8836)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Emerald Sword.")
   item_uid = doPlayerAddItem(cid,8836,1)
   setPlayerStorageValue(cid,8836,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

