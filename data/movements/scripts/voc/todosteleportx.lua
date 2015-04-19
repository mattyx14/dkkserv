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

if item.actionid == 7805 then
if getPlayerVocation(cid) == 9 or getPlayerVocation(cid) == 13 and getPlayerLevel(cid) >= 80 and isPremium(cid) == TRUE then
doTeleportThing(cid,sorcerer)
doSendMagicEffect(sorcerer,10)
	doPlayerSetVocation(cid,1)
else
doPlayerSendCancel(cid, "Only Premium Sorcerers of level 80 or higher are able to enter this portal")
doMoveCreature(cid, newdir)
end
elseif item.actionid == 7806 then
if getPlayerVocation(cid) == 10 or getPlayerVocation(cid) == 14 and getPlayerLevel(cid) >= 80 and isPremium(cid) == TRUE then
doTeleportThing(cid,druid)
doSendMagicEffect(druid,10)
	doPlayerSetVocation(cid,2)
else
doPlayerSendCancel(cid, "Only Premium Druids of level 80 or higher are able to enter this portal")
doMoveCreature(cid, newdir)
end
elseif item.actionid == 7807 then
if getPlayerVocation(cid) == 11 or getPlayerVocation(cid) == 15 and getPlayerLevel(cid) >= 80 and isPremium(cid) == TRUE then
doTeleportThing(cid,paladin)
doSendMagicEffect(paladin,10)
	doPlayerSetVocation(cid,3)
else
doPlayerSendCancel(cid, "Only Premium Paladins of level 80 or higher are able to enter this portal")
doMoveCreature(cid, newdir)
end
elseif item.actionid == 7808 then
if getPlayerVocation(cid) == 12 or getPlayerVocation(cid) == 16 and getPlayerLevel(cid) >= 80 and isPremium(cid) == TRUE then
doTeleportThing(cid,knight)
doSendMagicEffect(knight,10)
	doPlayerSetVocation(cid,4)
else
doPlayerSendCancel(cid, "Only Premium Knights of level 80 or higher are able to enter this portal")
doMoveCreature(cid, newdir)
end
end
end