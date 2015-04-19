-- Ancient Helmet by Peonso

function onUse(cid, item, frompos, item2, topos)
piece1pos = {x=1713, y=1151, z=11, stackpos=1}
piece2pos = {x=1713, y=1150, z=11, stackpos=1}
piece3pos = {x=1713, y=1149, z=11, stackpos=1}
piece4pos = {x=1714, y=1149, z=11, stackpos=1}
piece5pos = {x=1715, y=1149, z=11, stackpos=1}
piece6pos = {x=1715, y=1150, z=11, stackpos=1}
piece7pos = {x=1715, y=1151, z=11, stackpos=1}
helmetpos = {x=1714, y=1150, z=11, stackpos=1}
getpiece1 = getThingfromPos(piece1pos)
getpiece2 = getThingfromPos(piece2pos)
getpiece3 = getThingfromPos(piece3pos)
getpiece4 = getThingfromPos(piece4pos)
getpiece5 = getThingfromPos(piece5pos)
getpiece6 = getThingfromPos(piece6pos)
getpiece7 = getThingfromPos(piece7pos)

if item.itemid == 1945 and getpiece1.itemid == 2335 and getpiece2.itemid == 2336 and getpiece3.itemid == 2337 and getpiece4.itemid == 2338 and getpiece5.itemid == 2339 and getpiece6.itemid == 2340 and getpiece7.itemid == 2341 then
 doRemoveItem(getpiece1.uid,1)
doSendMagicEffect(piece1pos,23)
 doRemoveItem(getpiece2.uid,1)
doSendMagicEffect(piece2pos,23)
 doRemoveItem(getpiece3.uid,1)
doSendMagicEffect(piece3pos,23)
 doRemoveItem(getpiece4.uid,1)
doSendMagicEffect(piece4pos,23)
 doRemoveItem(getpiece5.uid,1)
doSendMagicEffect(piece5pos,23)
 doRemoveItem(getpiece6.uid,1)
doSendMagicEffect(piece6pos,23)
 doRemoveItem(getpiece7.uid,1)
doSendMagicEffect(piece7pos,23)
 doCreateItem(2343,1,helmetpos)
doSendMagicEffect(helmetpos,22)
 doTransformItem(item.uid,item.itemid+1)
 elseif item.uid == 1337 and item.itemid == 1946 then
  doTransformItem(item.uid,item.itemid-1)
 else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end