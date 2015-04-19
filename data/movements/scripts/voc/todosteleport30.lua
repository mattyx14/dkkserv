function onStepIn(cid, item, pos)

local sorcerer = {x=990, y=998, z=10}
local druid = {x=990, y=998, z=9}
local paladin = {x=990, y=998, z=11}
local knight = {x=990, y=998, z=8}

if getPlayerLookDir(cid) == 0 then
newdir = 2
elseif getPlayerLookDir(cid) == 1 then
newdir = 3
elseif getPlayerLookDir(cid) == 2 then
newdir = 0
else
newdir = 1
end

if item.actionid == 7809 then
if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 9 or getPlayerVocation(cid) == 13 or getPlayerVocation(cid) == 17  and getPlayerLevel(cid) >= 10 and isPremium(cid) == TRUE then
doTeleportThing(cid,sorcerer)
doSendMagicEffect(sorcerer,10)
else
doPlayerSendCancel(cid, "Only Sorcerers of level 10 or higher are able to enter this portal")
doMoveCreature(cid, newdir)
end

elseif item.actionid == 7810 then
if getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 10 or getPlayerVocation(cid) == 14 or getPlayerVocation(cid) == 18 and getPlayerLevel(cid) >= 10 and isPremium(cid) == TRUE then
doTeleportThing(cid,druid)
doSendMagicEffect(druid,10)
else
doPlayerSendCancel(cid, "Only Druids of level 10 or higher are able to enter this portal")
doMoveCreature(cid, newdir)
end

elseif item.actionid == 7811 then
if getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 11 or getPlayerVocation(cid) == 15 or getPlayerVocation(cid) == 19 and getPlayerLevel(cid) >= 10 and isPremium(cid) == TRUE then
doTeleportThing(cid,paladin)
doSendMagicEffect(paladin,10)
else
doPlayerSendCancel(cid, "Only Paladins of level 10 or higher are able to enter this portal")
doMoveCreature(cid, newdir)
end

elseif item.actionid == 7812 then
if getPlayerVocation(cid) == 4 or getPlayerVocation(cid) == 12 or getPlayerVocation(cid) == 16  or getPlayerVocation(cid) == 20 and getPlayerLevel(cid) >= 10 and isPremium(cid) == TRUE then
doTeleportThing(cid,knight)
doSendMagicEffect(knight,10)
else
doPlayerSendCancel(cid, "Only Knights of level 10 or higher are able to enter this portal")
doMoveCreature(cid, newdir)
end

end
end