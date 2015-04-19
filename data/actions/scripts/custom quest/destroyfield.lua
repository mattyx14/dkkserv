function onUse(cid, item, frompos, item2, topos)
mag = getPlayerMagLevel(cid)
if mag >= 3 then
if item2.itemid == 1492 or item2.itemid == 1493 or item2.itemid == 1494 or item2.itemid == 1495 or item2.itemid == 1496 or item2.itemid == 1498 then
doSendMagicEffect(topos,2)
doRemoveItem(item2.uid,1)
if item.type > 1 then
doChangeTypeItem(item.uid,item.type-01)
else
doRemoveItem(item.uid,1)
end
else
doSendMagicEffect(frompos,2)
return 0
end
else
doSendMagicEffect(frompos,2)
doPlayerSendCancel(cid,"You don't have the required magic level to use that rune.")
end
return 1
end