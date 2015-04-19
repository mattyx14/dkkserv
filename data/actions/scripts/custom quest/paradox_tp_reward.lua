-- paradox
function onUse(cid, item, frompos, item2, topos)

teleportgotoposition = {x=1009, y=710, z=5}

groundpos = {x=733, y=293, z=11, stackpos=0}
ground =  getThingfromPos(groundpos)

if item.itemid == 1946 then
doTransformItem(item.uid,1945)

else
doTransformItem(item.uid,1946)
doTransformItem(ground.uid,352)
doTeleportThing(cid,teleportgotoposition)

end

return 1
end
