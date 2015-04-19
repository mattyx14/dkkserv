function onStepIn(cid, item, pos)

local sorcerer = {x=962, y=974, z=8}
local druid = {x=971, y=983, z=8}
local paladin = {x=962, y=983, z=8}
local knight = {x=958, y=982, z=8}

if getPlayerLookDir(cid) == 0 then
newdir = 2
elseif getPlayerLookDir(cid) == 1 then
newdir = 3
elseif getPlayerLookDir(cid) == 2 then
newdir = 0
else
newdir = 1
end

if item.actionid == 7801 then
if getPlayerVocation(cid) == 1 or getPlayerVocation(cid) == 5 and getPlayerLevel(cid) >= 80 and isPremium(cid) == TRUE then
doTeleportThing(cid,sorcerer)
doSendMagicEffect(sorcerer,10)
	doPlayerSetVocation(cid,9)
else
doPlayerSendCancel(cid, "Only Premium Sorcerers of level 80 or higher are able to enter this portal")
doMoveCreature(cid, newdir)
end
elseif item.actionid == 7802 then
if getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 6 and getPlayerLevel(cid) >= 80 and isPremium(cid) == TRUE then
doTeleportThing(cid,druid)
doSendMagicEffect(druid,10)
	doPlayerSetVocation(cid,10)
else
doPlayerSendCancel(cid, "Only Premium Druids of level 80 or higher are able to enter this portal")
doMoveCreature(cid, newdir)
end
elseif item.actionid == 7803 then
if getPlayerVocation(cid) == 3 or getPlayerVocation(cid) == 7 and getPlayerLevel(cid) >= 80 and isPremium(cid) == TRUE then
doTeleportThing(cid,paladin)
doSendMagicEffect(paladin,10)
	doPlayerSetVocation(cid,11)
else
doPlayerSendCancel(cid, "Only Premium Paladins of level 80 or higher are able to enter this portal")
doMoveCreature(cid, newdir)
end
elseif item.actionid == 7804 then
if getPlayerVocation(cid) == 4 or getPlayerVocation(cid) == 8 and getPlayerLevel(cid) >= 80 and isPremium(cid) == TRUE then
doTeleportThing(cid,knight)
doSendMagicEffect(knight,10)
	doPlayerSetVocation(cid,12)
else
doPlayerSendCancel(cid, "Only Premium Knights of level 80 or higher are able to enter this portal")
doMoveCreature(cid, newdir)
end
end
end