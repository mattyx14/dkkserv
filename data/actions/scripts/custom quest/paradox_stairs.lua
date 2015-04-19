-- paradox
function onUse(cid, item, frompos, item2, topos)

groundpos = {x=733, y=293, z=11, stackpos=0}
ground =  getThingfromPos(groundpos)

if item.itemid == 1946 then
doTransformItem(item.uid,1945)
doTransformItem(ground.uid,4834)

else
doTransformItem(item.uid,1946)
doTransformItem(ground.uid,352)

end

return 1
end
