-- paradox
function onUse(cid, item, frompos, item2, topos)

teleportgotoposition = {x=1009, y=709, z=6}
teleportcreateposition = {x=1009, y=709, z=7, stackpos=253}

if item.itemid == 1946 then
doTransformItem(item.uid,1945)
else
doTransformItem(item.uid,1946)
player1 = getThingfromPos(teleportcreateposition)
doTeleportThing(player1.uid,teleportgotoposition)
doSendMagicEffect(teleportcreateposition,12)
doSendMagicEffect(teleportgotoposition,10)
end

return 1
end
