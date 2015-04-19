function onUse(cid, item, frompos, item2, topos)
gatepos = {x=280, y=143, z=6, stackpos=1}
getgate = getThingfromPos(gatepos)

if item.uid == 4571 and item.itemid == 1945 and getgate.itemid == 1285 then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 4563 and item.itemid == 1946 and getgate.itemid == 0 then
doCreateItem(1285,1,gatepos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return 1
  end