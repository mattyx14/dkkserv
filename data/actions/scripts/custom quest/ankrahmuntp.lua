function onUse(cid, item, frompos, item2, topos)

player1pos = {x=1735, y=1132, z=13, stackpos=253}
player1 = getThingfromPos(player1pos)

piece1pos = {x=1736, y=1132, z=13, stackpos=1}
getpiece1 = getThingfromPos(piece1pos)
if item.uid == 9995 and item.itemid == 1945 and getpiece1.itemid == 2159 and player1.itemid > 0 then
doRemoveItem(getpiece1.uid,1)
nplayer1pos = {x=1736, y=1130, z=14}
doTeleportThing(player1.uid,nplayer1pos)
doSendMagicEffect(nplayer1pos,10)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 9995 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end