-- Demon Helmet
function onUse(cid, item, frompos, item2, topos)
demonhelmetuniqueid = 7041
rockposition = {x=1728, y=336, z=14, stackpos=1}
getrock = getThingfromPos(rockposition)
peopleposition = {x=rockposition.x, y=rockposition.y, z=rockposition.z, stackpos=253}
people = getThingfromPos(peopleposition)
ground1 = {x=1732, y=334, z=14, stackpos=0}
if people.itemid == 0 then
if item.uid == demonhelmetuniqueid and item.itemid == 1945 and getrock.itemid == 1355 then
doRemoveItem(getrock.uid,1)
doTransformItem(item.uid,item.itemid+1)
doCreateItem(423,1,ground1)
elseif item.uid == demonhelmetuniqueid and item.itemid == 1946 and getrock.itemid == 0 then
doCreateItem(1355,1,rockposition)
doTransformItem(item.uid,item.itemid-1)
doCreateItem(474,1,ground1)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
else
peopleposition.x = rockposition.x+1
doTeleportThing(people.uid,peopleposition)
doCreateItem(1355,1,rockposition)
doTransformItem(item.uid,item.itemid-1)
removeTeleport(teleportcreateposition)
end
return 1
end