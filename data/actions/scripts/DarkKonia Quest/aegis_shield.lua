function onUse(cid, item, frompos, item2, topos)
if item.uid == 15796 then
  queststatus = getPlayerStorageValue(cid,15796)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Aegis Shield.")
   item_uid = doPlayerAddItem(cid,15943,1)
   setPlayerStorageValue(cid,15796,1)

  else
   doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
  end
else
  return 0
end
return 1
end

