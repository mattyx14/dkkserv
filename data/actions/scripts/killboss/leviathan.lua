function onMonsterDeath(killer, monster, corpse, damage, totaldamage) 

wallpos = {x=1395, y=1823, z=14, stackpos=1} 
wall = getThingfromPos(wallpos) 

if wall.itemid == 5412 then 

doRemoveItem(wall.uid,1) 
doSendMagicEffect(wallpos,2) 


end 
return 1 
end 

function onUse(cid, item, frompos, item2, topos) 
telpos = {x=196, y=151, z=8, stackpos=253} 
wallpos = {x=196, y=150, z=8, stackpos=1} 
wall = getThingfromPos(wallpos) 

if item.uid == 2000 then 
queststatus = getPlayerStorageValue(cid,2000) 

if queststatus == -1 then 
doPlayerSendTextMessage(cid,22,'Tu as encontrado un Leviathan.') 
doPlayerAddItem(cid,2520,1) 
setPlayerStorageValue(cid,2000,1) 
doTeleportThing(cid,telpos) 
doCreateItem(1497,1,wallpos) 
doSendMagicEffect(telpos,13) 
else 
doPlayerSendTextMessage(cid,22,"Has tomado tu premio.") 
doTeleportThing(cid,telpos) 
doCreateItem(1497,1,wallpos) 
doSendMagicEffect(telpos,13) 
end 

return 1 
else 
return 0 
end 
end