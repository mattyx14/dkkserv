function onUse(cid, item, frompos, item2, topos)
gatepos = {x=624, y=433, z=8, stackpos=1}
getgate = getThingfromPos(gatepos)
if item.uid == 14030 and item.itemid == 1945 and getgate.itemid == 0 then
doCreateItem(1386,1,gatepos)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 14030 and item.itemid == 1946 and getgate.itemid == 1386 then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Desculpe, n�o � possivel.")
end
return 1
end
