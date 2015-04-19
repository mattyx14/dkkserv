-- paradox
function onUse(cid, item, frompos, item2, topos)

ground1 = {x=929, y=1066, z=8, stackpos=0}
ground2 = {x=929, y=1067, z=8, stackpos=0}

if item.itemid == 1946 then
doTransformItem(item.uid,1945)
doCreateItem(480,1,ground1)
doCreateItem(480,1,ground2)

else
tile1 = getThingfromPos(ground1)
tile2 = getThingfromPos(ground2)
doRemoveItem(tile1.uid,1)
doRemoveItem(tile2.uid,1)
doTransformItem(item.uid,1946)
end

return 1
end
