function onUse(cid, item, frompos, item2, topos)

player1pos = {x=1339, y=1816, z=12, stackpos=1}
player1 = getThingfromPos(player1pos)

piece1pos = {x=1340, y=1815, z=12, stackpos=1}
getpiece1 = getThingfromPos(piece1pos)
if item.uid == 39912 and item.itemid == 1945 and getpiece1.itemid == 15847 and player1.itemid > 0 then
doRemoveItem(getpiece1.uid,1)
nplayer1pos = {x=1385, y=1822, z=14}
doTeleportThing(player1.uid,nplayer1pos,0)
doSendMagicEffect(nplayer1pos,10)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 39912 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end