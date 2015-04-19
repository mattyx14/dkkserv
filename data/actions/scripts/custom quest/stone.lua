-- Svargrond Arena by Szuwar

local stone1pos = {x=1065,y=691,z=9,stackpos=1}
local stone2pos = {x=68,y=23,z=8,stackpos=1}
local stone3pos = {x=82,y=23,z=8,stackpos=1}
local stone4pos = {x=56,y=34,z=8,stackpos=1}
local stone5pos = {x=68,y=34,z=8,stackpos=1}
local stone6pos = {x=82,y=34,z=8,stackpos=1}
local stone7pos = {x=56,y=45,z=8,stackpos=1}
local stone8pos = {x=68,y=45,z=8,stackpos=1}
local stone9pos = {x=82,y=45,z=8,stackpos=1}
local stone10pos = {x=68,y=57,z=8,stackpos=1}

function onStepIn(cid, item, pos)

local function doCheckLvl(cid, storage)

if getPlayerStorageValue(cid, storage) == 1 then
monsters = {"Rat", "Wolf", "Bug", "Troll", "Orc", "Minotaur", "Rotworm", "Elf", "Ghoul", "Minotaur Mage"}
elseif getPlayerStorageValue(cid, storage) == 2 then
monsters = {"Monk", "Orc Leader", "Dark Monk", "Vampire", "Slime", "Orc Warlord", "Dragon", "Mummy", "Demon Skeleton", "Dragon Lord"}
elseif getPlayerStorageValue(cid, storage) == 3 then
monsters = {"Dragon", "Wyvern", "Hydra", "Behemoth", "Thalas", "Evil Eye", "Demon", "Juggernaut", "Orshabaal", "Ferumbras"}
end
end

local function doChange(cid, pos, creature, tpos)
local stone = getThingfromPos(pos)
doSetItemActionId(stone.uid,6000)
doTeleportThing(cid,tpos)
doSendMagicEffect(pos,10)
local pos = getThingPos(stone.uid)
monster = doSummonCreature(creature, pos)
doSendAnimatedText(tpos,"Fight!",198)
end

local function doCheckStone(stonepos)
local stone = getThingfromPos(stonepos)
if stone.actionid ~= 6000 and stone.itemid == 1304 then
return 0
elseif stone.actionid == 6000 or stone.itemid ~= 1304 then
return 1
end
end

local function roomBusy(cid, pos)
pos.y = pos.y + 1
doTeleportThing(cid, pos)
doPlayerSendTextMessage(cid, 22, "Stand in the line!")
end
doCheckLvl(cid, 5029)
if item.actionid == 2004 and doCheckStone(stone1pos) == 0 then
local npos = {x=1075,y=684,z=9}
doChange(cid, stone1pos, monsters[1], npos)
elseif item.actionid == 2005 and doCheckStone(stone2pos) == 0 then
local npos = {x=75,y=31,z=8}
doChange(cid, stone2pos, monsters[2], npos)
doCreateItem(1304,1,stone1pos)
elseif item.actionid == 2006 and doCheckStone(stone3pos) == 0 then
local npos = {x=87,y=31,z=8}
doChange(cid, stone3pos, monsters[3], npos)
doCreateItem(1304,1,stone2pos)
elseif item.actionid == 2007 and doCheckStone(stone4pos) == 0 then
local npos = {x=61,y=42,z=8}
doChange(cid, stone4pos, monsters[4], npos)
doCreateItem(1304,1,stone3pos)
elseif item.actionid == 2008 and doCheckStone(stone5pos) == 0 then
local npos = {x=75,y=42,z=8}
doChange(cid, stone5pos, monsters[5], npos)
doCreateItem(1304,1,stone4pos)
elseif item.actionid == 2009 and doCheckStone(stone6pos) == 0 then
local npos = {x=87,y=42,z=8}
doChange(cid, stone6pos, monsters[6], npos)
doCreateItem(1304,1,stone5pos)
elseif item.actionid == 2010 and doCheckStone(stone7pos) == 0 then
local npos = {x=61,y=54,z=8}
doChange(cid, stone7pos, monsters[7], npos)
doCreateItem(1304,1,stone6pos)
elseif item.actionid == 2011 and doCheckStone(stone8pos) == 0 then
local npos = {x=75,y=54,z=8}
doChange(cid, stone8pos, monsters[8], npos)
doCreateItem(1304,1,stone7pos)
elseif item.actionid == 2012 and doCheckStone(stone9pos) == 0 then
local npos = {x=87,y=54,z=8}
doChange(cid, stone9pos, monsters[9], npos)
doCreateItem(1304,1,stone8pos)
elseif item.actionid == 2013 and doCheckStone(stone10pos) == 0 then
local npos = {x=74,y=65,z=8}
doChange(cid, stone10pos, monsters[10], npos)
doCreateItem(1304,1,stone9pos)
elseif item.actionid == 2014 then
doCreateItem(1304,1,stone10pos)
local npos = {x=83,y=59,z=8}
doTeleportThing(cid, npos)
doSendMagicEffect(npos,10)

elseif doCheckStone(stone10pos) == 1 then
roomBusy(cid, pos)
elseif doCheckStone(stone9pos) == 1 then
roomBusy(cid, pos)
elseif doCheckStone(stone8pos) == 1 then
roomBusy(cid, pos)
elseif doCheckStone(stone7pos) == 1 then
roomBusy(cid, pos)
elseif doCheckStone(stone6pos) == 1 then
roomBusy(cid, pos)
elseif doCheckStone(stone5pos) == 1 then
roomBusy(cid, pos)
elseif doCheckStone(stone4pos) == 1 then
roomBusy(cid, pos)
elseif doCheckStone(stone3pos) == 1 then
roomBusy(cid, pos)
elseif doCheckStone(stone2pos) == 1 then
roomBusy(cid, pos)
elseif doCheckStone(stone1pos) == 1 then
roomBusy(cid, pos)
end
end

function onAddItem(moveitem, tileitem, pos)

local function doCheckBody(moveitem, stonepos, monster)

local stone = getThingfromPos(stonepos)
if moveitem.itemid == 6324 and stone.itemid ~= 0 then
doRemoveItem(stone.uid,1)
doRemoveItem(moveitem.uid,1)
doSendMagicEffect(stonepos,2)
elseif moveitem.itemid == 3058 or moveitem.itemid == 3065 then
doRemoveItem(moveitem.uid,1)
local pos = getThingPos(monster)
doCreatureAddHealth(monster,-10000)
doCreateItem(1304,1,stonepos)
doSetItemActionId(stone.uid,5999)
end
end

if tileitem.actionid == 3001 then
doCheckBody(moveitem, stone1pos, monster)
elseif tileitem.actionid == 3002 then
doCheckBody(moveitem, stone2pos, monster)
elseif tileitem.actionid == 3003 then
doCheckBody(moveitem, stone3pos, monster)
elseif tileitem.actionid == 3004 then
doCheckBody(moveitem, stone4pos, monster)
elseif tileitem.actionid == 3005 then
doCheckBody(moveitem, stone5pos, monster)
elseif tileitem.actionid == 3006 then
doCheckBody(moveitem, stone6pos, monster)
elseif tileitem.actionid == 3007 then
doCheckBody(moveitem, stone7pos, monster)
elseif tileitem.actionid == 3008 then
doCheckBody(moveitem, stone8pos, monster)
elseif tileitem.actionid == 3009 then
doCheckBody(moveitem, stone9pos, monster)
elseif tileitem.actionid == 3010 then
doCheckBody(moveitem, stone10pos, monster)
end
end