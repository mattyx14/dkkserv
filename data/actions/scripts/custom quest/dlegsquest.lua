function onWalkIn(cid, item, frompos, item2, topos) 
if item.uid == 5555 then 
queststatus = getPlayerStorageValue(cid,5555)
if queststatus == -1 then
doSummonCreature("demon", {x=700, y=645, z=11}) 
doSummonCreature("demon", {x=698, y=649, z=11})
doSummonCreature("demon", {x=693, y=648, z=11})
doSummonCreature("demon", {x=690, y=645, z=11})
setPlayerStorageValue(cid,5555,1)
else
doPlayerSendCancel(cid,"You already it made.")
end
else
return 0
end
return 1
end 