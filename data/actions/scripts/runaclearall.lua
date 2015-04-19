local blank = 2260

function onUse(cid, item, frompos, item2, topos)

Itempos = {x=topos.x,y=topos.y,z=topos.z,stackpos=1}
Item = getThingfromPos(Itempos)

if Item.itemid > 0 then
doSendMagicEffect(topos, 14)
doRemoveItem(Item.uid, 1)
doTransformItem(item.uid, blank)
doSendAnimatedText(Itempos,"Brumm!",12)

end
return 1
end