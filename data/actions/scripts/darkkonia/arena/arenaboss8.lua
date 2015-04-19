function onUse(cid, item, frompos, item2, topos)

player1pos = {x=1104, y=674, z=9, stackpos=1}
player1 = getThingfromPos(player1pos)

piece1pos = {x=1105, y=673, z=9, stackpos=1}
getpiece1 = getThingfromPos(piece1pos)
if item.uid == 39908 and item.itemid == 1945 and getpiece1.itemid == 8204 and player1.itemid > 0 then
doRemoveItem(getpiece1.uid,1)
nplayer1pos = {x=1113, y=747, z=9}
doTeleportThing(player1.uid,nplayer1pos,0)
doSendMagicEffect(nplayer1pos,10)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 39908 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end