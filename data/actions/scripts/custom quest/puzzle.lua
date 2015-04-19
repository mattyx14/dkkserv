startx = 905
starty = 724
endx   = 910
endy   = 728
z = 12

solveid = 406
normalid= 407

--------------------------------------------------------------
function transform(pos)
 item = getThingfromPos(pos)
 if item.itemid == solveid then
   doTransformItem(item.uid,normalid)
   doSendMagicEffect(pos,2)
 elseif item.itemid == normalid then
   doTransformItem(item.uid,solveid)
   doSendMagicEffect(pos,2)
 end
end

--------------------------------------------------------------
function check()

solved = true

y = 0
while y <= endy-starty do
  x = 0
  while x <= endx-startx do
    pos = {x=x+startx, y=y+starty, z=z, stackpos=0}
    item = getThingfromPos(pos)
    if item.itemid ~= solveid then
      solved = false
    end
    x = x + 1
  end
  y = y + 1
end

return solved

end

--------------------------------------------------------------
function reset()

y = 0
while y <= endy-starty do
  x = 0
  while x <= endx-startx do
    pos = {x=x+startx, y=y+starty, z=z, stackpos=0}
    item = getThingfromPos(pos)
    doTransformItem(item.uid,normalid)
    doSendMagicEffect(pos,2)
    x = x + 1
  end
  y = y + 1
end

return solved

end
--------------------------------------------------------------

function onUse(cid, item, frompos, item2, topos)

if item.itemid == normalid or item.itemid == solveid then
if topos.z == z and topos.x >= startx and topos.x <= endx and topos.y >= starty and topos.y <= endy then
 
 switchpos = {x=topos.x, y=topos.y, z=topos.z, stackpos=0}
 transform(switchpos)

 switchpos = {x=topos.x-1, y=topos.y, z=topos.z, stackpos=0}
 transform(switchpos)

 switchpos = {x=topos.x+1, y=topos.y, z=topos.z, stackpos=0}
 transform(switchpos)

 switchpos = {x=topos.x, y=topos.y-1, z=topos.z, stackpos=0}
 transform(switchpos)

 switchpos = {x=topos.x, y=topos.y+1, z=topos.z, stackpos=0}
 transform(switchpos)

 pos = {x=startx+2, y=starty+2, z=z, stackpos=0}
 item = getThingfromPos(pos)
 
 if check() and item.itemid == solveid then  
 doTransformItem(item.uid,432)
 elseif item.itemid == 432 then
 reset()
 end

end
--------------------------------------------------------------
elseif item.actionid == 8765 then
if item.itemid == 1945 then
doTransformItem(item.uid,1946)
elseif item.itemid == 1946 then
doTransformItem(item.uid,1945)
reset()
end
--------------------------------------------------------------
elseif item.uid == 8766 then

reset()

queststatus = getPlayerStorageValue(cid,8766)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Djinn Blade.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2451,1)
setPlayerStorageValue(cid,8766,1)
reset()

else
doPlayerSendTextMessage(cid,22,"It is empty!.")
end
--------------------------------------------------------------
elseif item.uid == 8767 then

reset()

queststatus = getPlayerStorageValue(cid,8767)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Spike Sword.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2383,1)
setPlayerStorageValue(cid,8767,1)

else
doPlayerSendTextMessage(cid,22,"It is empty!.")
end

end

 return 1
end
