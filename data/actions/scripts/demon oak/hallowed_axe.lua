--script on hallowed axe--
function onUse(cid,item,frompos,item2,topos)
number = math.random(1,100)
chance = 95
minItem = 1
maxItem = 3
mind = 300
maxd = 500


if chance > 100 or chance == 0 then
chance = 100
end
-----------------------------------------------------------------------------------------
-- Variables
leftspikedballpos11 = {x=topos.x-1, y=topos.y+2, z=topos.z}
leftspikedballpos12 = {x=topos.x+2, y=topos.y+1, z=topos.z}
leftspikedballpos13 = {x=topos.x-1, y=topos.y-2, z=topos.z}
leftspikedballpos14 = {x=topos.x+2, y=topos.y-1, z=topos.z}
leftspikedballpos21 = {x=topos.x-1, y=topos.y-2, z=topos.z}
leftspikedballpos22 = {x=topos.x-2, y=topos.y-1, z=topos.z}
leftspikedballpos31 = {x=topos.x-1, y=topos.y+2, z=topos.z}
leftspikedballpos32 = {x=topos.x-2, y=topos.y+1, z=topos.z}

birdpos11 = {x=topos.x+2, y=topos.y+1, z=topos.z}
birdpos12 = {x=topos.x+1, y=topos.y+2, z=topos.z}
birdpos13 = {x=topos.x+2, y=topos.y, z=topos.z}
birdpos14 = {x=topos.x+1, y=topos.y, z=topos.z}
birdpos21 = {x=topos.x+2, y=topos.y+1, z=topos.z}
birdpos22 = {x=topos.x+1, y=topos.y+2, z=topos.z}
birdpos31 = {x=topos.x-2, y=topos.y+1, z=topos.z}
birdpos32 = {x=topos.x-1, y=topos.y, z=topos.z}

rightspikedballpos11 = {x=topos.x+1, y=topos.y, z=topos.z}
rightspikedballpos12 = {x=topos.x+2, y=topos.y-1, z=topos.z}
rightspikedballpos13 = {x=topos.x+1, y=topos.y+2, z=topos.z}
rightspikedballpos14 = {x=topos.x+2, y=topos.y+1, z=topos.z}
rightspikedballpos21 = {x=topos.x+1, y=topos.y+2, z=topos.z}
rightspikedballpos22 = {x=topos.x+2, y=topos.y+1, z=topos.z}
rightspikedballpos31 = {x=topos.x-1, y=topos.y+2, z=topos.z}
rightspikedballpos32 = {x=topos.x-2, y=topos.y+1, z=topos.z}

faceoftreepos11 = {x=topos.x-2, y=topos.y-1, z=topos.z}
faceoftreepos12 = {x=topos.x+1, y=topos.y-2, z=topos.z}
faceoftreepos13 = {x=topos.x+2, y=topos.y-1, z=topos.z}
faceoftreepos14 = {x=topos.x-1, y=topos.y-2, z=topos.z}
faceoftreepos21 = {x=topos.x-2, y=topos.y-1, z=topos.z}
faceoftreepos22 = {x=topos.x-1, y=topos.y-2, z=topos.z}
faceoftreepos31 = {x=topos.x-2, y=topos.y+1, z=topos.z}
faceoftreepos32 = {x=topos.x-1, y=topos.y+2, z=topos.z}
-----------------------------------------------------------------------------------------

--------------------Demon oak(The left spiked ball)--------------------
if item2.itemid == 8289 then
leftspikedball = getPlayerStorageValue(cid,20000)
if leftspikedball == -1 or leftspikedball == 0 then
if number <= chance then
surp = math.random(minItem, maxItem)
if surp == 1 then
if number <= 75 then
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("bone beast",leftspikedballpos11)
doSummonCreature("bone beast",leftspikedballpos12)
doSummonCreature("bone beast",leftspikedballpos13)
doSummonCreature("bone beast",leftspikedballpos14)
else
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("skeletal horror",leftspikedballpos11)
doSummonCreature("lich",leftspikedballpos12)
doSummonCreature("lich",leftspikedballpos13)
doSummonCreature("skeletal horror",leftspikedballpos14)
end
end
if surp == 2 then
if number <= 75 then
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("hidon",leftspikedballpos21)
doSummonCreature("gloom widow",leftspikedballpos22)
else
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("grim reaper",leftspikedballpos21)
doSummonCreature("dark torturer",leftspikedballpos22)
end
end
if surp == 3 then
if number <= 50 then
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("undead dragon",leftspikedballpos31)
else
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("grim reaper",leftspikedballpos31)
doSummonCreature("dark torturer",leftspikedballpos32)
end
end

else
doSendMagicEffect(topos,2)
setPlayerStorageValue(cid,20000,1)
end
else
doSendMagicEffect(topos,2)
end
return 1
end

--------------------Demon oak(The bird)--------------------
if item2.itemid == 8288 then
bird = getPlayerStorageValue(cid,20001)
if bird == -1 or bird == 0 then
if number <= chance then
surp = math.random(minItem, maxItem)
if surp == 1 then
if number <= 75 then
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("nightmare",birdpos11)
doSummonCreature("nightmare",birdpos12)
doSummonCreature("banshee",birdpos13)
doSummonCreature("nightmare",birdpos14)
else
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("plaguesmith",birdpos11)
doSummonCreature("plaguesmith",birdpos12)
doSummonCreature("plaguesmith",birdpos13)
doSummonCreature("plaguesmith",birdpos14)
end
end
if surp == 2 then
if number <= 75 then
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("demon",birdpos21)
doSummonCreature("diabolic imp",birdpos22)
else
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("blightwalker",birdpos21)
doSummonCreature("betrayed wraith",birdpos22)
end
end
if surp == 3 then
if number <= 50 then
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("undead dragon",birdpos31)
else
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("fury",birdpos31)
doSummonCreature("dark torturer",birdpos32)
end
end

else
doSendMagicEffect(topos,2)
setPlayerStorageValue(cid,20001,1)
end
else
doSendMagicEffect(topos,2)
end
return 1
end

--------------------Demon oak(The right spiked ball)--------------------
if item2.itemid == 8290 then
rightspikedball = getPlayerStorageValue(cid,20002)
if rightspikedball == -1 or rightspikedball == 0 then
if number <= chance then
surp = math.random(minItem, maxItem)
if surp == 1 then
if number <= 75 then
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("hidon",rightspikedballpos11)
doSummonCreature("hidon",rightspikedballpos12)
doSummonCreature("lich",rightspikedballpos13)
doSummonCreature("skeletal horror",rightspikedballpos14)
else
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("gloom widow",rightspikedballpos11)
doSummonCreature("giant spider",rightspikedballpos12)
doSummonCreature("gloom widow",rightspikedballpos13)
doSummonCreature("gloom widow",rightspikedballpos14)
end
end
if surp == 2 then
if number <= 75 then
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("dark torturer",rightspikedballpos21)
doSummonCreature("demon",rightspikedballpos22)
else
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("diabolic imp",rightspikedballpos21)
doSummonCreature("diabolic imp",rightspikedballpos22)
end
end
if surp == 3 then
if number <= 50 then
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("fury",rightspikedballpos31)
else
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("grim reaper",rightspikedballpos31)
doSummonCreature("grim reaper",rightspikedballpos32)
end
end

else
doSendMagicEffect(topos,2)
setPlayerStorageValue(cid,20002,1)
end
else
doSendMagicEffect(topos,2)
end
return 1
end

--------------------Demon oak(The face of the tree)--------------------
if item2.itemid == 8291 then
faceoftree = getPlayerStorageValue(cid,20003)
if faceoftree == -1 or faceoftree == 0 then
if number <= chance then
surp = math.random(minItem, maxItem)
if surp == 1 then
if number <= 75 then
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("executor",faceoftreepos11)
doSummonCreature("vampire",faceoftreepos12)
doSummonCreature("vampire",faceoftreepos13)
doSummonCreature("executor",faceoftreepos14)
else
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("diabolic imp",faceoftreepos11)
doSummonCreature("diabolic imp",faceoftreepos12)
doSummonCreature("diabolic imp",faceoftreepos13)
doSummonCreature("diabolic imp",faceoftreepos14)
end
end
if surp == 2 then
if number <= 75 then
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("demon",faceoftreepos21)
doSummonCreature("grim reaper",faceoftreepos22)
else
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("fury",faceoftreepos21)
doSummonCreature("fury",faceoftreepos22)
end
end
if surp == 3 then
if number <= 50 then
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("undead dragon",faceoftreepos31)
doSummonCreature("fury",faceoftreepos32)
else
doSendMagicEffect(topos,0)
doTargetCombatHealth(0, cid, COMBAT_EARTHDAMAGE, -290, -510, CONST_ME_BIGPLANTS)
doSummonCreature("grim reaper",faceoftreepos31)
doSummonCreature("fury",faceoftreepos32)
end
end

else
doSendMagicEffect(topos,2)
setPlayerStorageValue(cid,20003,1)
end
else
doSendMagicEffect(topos,2)
end
return 1
end

return 0
end