 function onUse(cid, item, frompos, item2, topos)

player1pos = {x=1518, y=1177, z=13, stackpos=253}
player1 = getThingfromPos(player1pos)

piece1pos = {x=1518, y=1178, z=13, stackpos=1}
getpiece1 = getThingfromPos(piece1pos)
if item.itemid == 1945 and getpiece1.itemid == 2159 and player1.itemid > 0 then
doRemoveItem(getpiece1.uid,1)
nplayer1pos = {x=1521, y=1178, z=14}
doTeleportThing(player1.uid,nplayer1pos)
doSendMagicEffect(nplayer1pos,10)
doTransformItem(item.uid,item.itemid+1)
elseif item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end