-- paradox
function onUse(cid, item, frompos, item2, topos)

teleportgotoposition = {x=1022, y=407, z=14}

if item.uid == 1560 and item.itemid == 1946 then 
creaturepos = {x=1011, y=711, z=6}
doSummonCreature("Dragon", creaturepos)
doTransformItem(item.uid,1945)
doSendMagicEffect(topos,2)
end

if item.uid == 1561 then

doTeleportThing(cid,teleportgotoposition)

if item.itemid == 1946 then
doTransformItem(item.uid,1945)
else
doTransformItem(item.uid,1946)
end

end

return 1
end
