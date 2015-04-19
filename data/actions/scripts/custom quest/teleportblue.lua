function onUse(cid, item, frompos, item2, topos)
teleport = {x=169, y=143, z=6} 

if item.uid == 2000 and item.itemid == 1946 then
npos = {x=169, y=141, z=7} 
addTeleport(teleport, npos)
doTransformItem(item.uid,item.itemid-1)
 elseif item.uid == 2000 and item.itemid == 1945 then
 removeTeleport(teleport)
 doTransformItem(item.uid,item.itemid+1)
 else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end
