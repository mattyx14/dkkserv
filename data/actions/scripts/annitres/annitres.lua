function onUse(cid, item, frompos, item2, topos)

player1pos = {x=1276, y=1091, z=10, stackpos=1}
player1 = getThingfromPos(player1pos)

piece1pos = {x=1277, y=1092, z=10, stackpos=1}
getpiece1 = getThingfromPos(piece1pos)
if item.uid == 39911 and item.itemid == 1945 and getpiece1.itemid == 2273 and player1.itemid > 0 then
doRemoveItem(getpiece1.uid,1)
nplayer1pos = {x=1270, y=1092, z=10}
doTeleportThing(player1.uid,nplayer1pos,0)
doSendMagicEffect(nplayer1pos,10)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 39911 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end