 -- Svargrond Arena by Szuwar
-- Thanks to Noxitu for help
-- Umby

--  masterpos is the location that the player will first be teleported to.   It is TWO squares south of the MIDDLE of the FIRST room       (see screen shot)
local masterpos = {x=1065, y=691, z=9, stackpos=1}  -- this must match the position in the NPC script
local timeLimit = 600   						  -- this is the time limit in seconds  (600 = 10 minutes)       this has to match the timeLimit in the arenaNPC.lua script aswell.
--  you shouldnt need to edit any more of the script.  

local stone1pos = {x = masterpos.x-5, y = masterpos.y-2, z = masterpos.z, stackpos = 1}
local stone2pos = {x = masterpos.x-19, y = masterpos.y-2, z = masterpos.z, stackpos = 1}
local stone3pos = {x = masterpos.x-33, y = masterpos.y-2, z = masterpos.z, stackpos = 1}
local stone4pos = {x = masterpos.x-47, y = masterpos.y-2, z = masterpos.z, stackpos = 1}
local stone5pos = {x = masterpos.x-41, y = masterpos.y-15, z = masterpos.z, stackpos = 1}
local stone6pos = {x = masterpos.x-27, y = masterpos.y-15, z = masterpos.z, stackpos = 1}
local stone7pos = {x = masterpos.x-13, y = masterpos.y-15, z = masterpos.z, stackpos = 1}
local stone8pos = {x = masterpos.x-21, y = masterpos.y-28, z = masterpos.z, stackpos = 1}
local stone9pos = {x = masterpos.x-35, y = masterpos.y-28, z = masterpos.z, stackpos = 1}
local stone10pos = {x = masterpos.x-29, y = masterpos.y-41, z = masterpos.z, stackpos = 1}

local function doCheckStoneId(stonepos)
	local stone = getThingfromPos(stonepos)
		if stone.itemid ~= 1354 then
			doCreateItem(1354,1,stonepos)
		end
			if stone.actionid == 6000 then
				doSetItemActionId(stone.uid,5999)
			end
end
local function doChange(cid, pos, creature, tpos)
	local stone = getThingfromPos(pos)
	doSetItemActionId(stone.uid,6000)
	local pos = getThingPos(stone.uid)
	monster = doSummonCreature(creature, pos)
	doTeleportThing(cid,tpos)
	doSendAnimatedText(tpos,"Fight!",198)	
	doSendMagicEffect(pos,10)
end
function onStepIn(cid, item, pos)
playerID = getGlobalStorageValue(9000)

local function arenaOver(cid)        --  if the player leaves, dies, logs out, wins, or is teleported out:
	setGlobalStorageValue(3000,-1)       --  if the arena is in use or not
	setPlayerStorageValue(cid,5029,-1)   -- reset the player arena status (hard med easy) 
	setPlayerStorageValue(cid,3002,-1)   -- if the player is still in the arena or not
	setPlayerStorageValue(cid,2999,-1)   -- dont mind this (addEvent)
end
local function doCheckLvl(cid, storage)
	if getPlayerStorageValue(cid, storage) == 1 then      -- easy
		monsters = {"Frostfur", "demon", "Bovinus", "Achad", "Colerian the Barbarian", "The Hairy One", "Axeitus Headbanger", "Rocky", "Cursed Gladiator", "Orcus the Cruel"}
	elseif getPlayerStorageValue(cid, storage) == 2 then  -- medium
		monsters = {"Avalanche", "Kreebosh the Exile", "The Dark Dancer", "The Hag", "Slim", "Grimgor Guteater", "Drasilla", "Spirit of Earth", "Spirit of Water", "Spirit of Fire"}
	elseif getPlayerStorageValue(cid, storage) == 3 then  -- hard
		monsters = {"Webster", "Darakan the Executioner", "Norgle Glacierbeard", "The Pit Lord", "Svoren The Mad", "The Masked Marauder", "Gnorre Chyllson", "Fallen Mooh'Tah Master Ghar", "Deathbringer", "The Obliverator"}
	end
end
local function doCheckStone(stonepos)
	local stone = getThingfromPos(stonepos)
		if stone.actionid ~= 6000 and stone.itemid == 1354 then
			return 0
		elseif stone.actionid == 6000 or stone.itemid ~= 1354 then
			return 1
		end
end
local function roomBusy(cid, pos)	
		doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
		doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)
		doSendMagicEffect(pos,10)
		doPlayerSendTextMessage(cid, 22, "The arena is in use right now, wait your turn!")
end
	
doCheckLvl(cid, 5029)

if item.actionid == 2002 then  
		doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
		doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)
		doCheckStoneId(stone1pos)
		doCheckStoneId(stone2pos)
		doCheckStoneId(stone3pos)
		doCheckStoneId(stone4pos)
		doCheckStoneId(stone5pos)
		doCheckStoneId(stone6pos)
		doCheckStoneId(stone7pos)
		doCheckStoneId(stone8pos)
		doCheckStoneId(stone9pos)
		doCheckStoneId(stone10pos)
		arenaOver(cid)		
		doCreatureAddHealth(monster,-10000)  -- might give an error if someone leaves after the monster is dead
elseif item.actionid == 2003 then  -- tp leading from the reward room to the NPC area
		doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
		doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)
elseif item.actionid == 2004 and doCheckStone(stone1pos) == 0 then       -- from the npc room, teleports you to room one
	if 	(getGlobalStorageValue(3000) == 1 and hasAddedEvent ~= 1) then
		local passArgs = {cid=cid, npos=npos}
		setPlayerStorageValue(cid,5030,1)  
		setGlobalStorageValue(3001,1)   
		local npos = masterpos  
		if getPlayerStorageValue(cid,2999) == -1 then
			addEvent(after1second,1000,passArgs)		
			setPlayerStorageValue(cid,2999,1)  
		end
	else  -- player was tped past the exp doors or logged in there or something
		doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
		doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)
		doPlayerSendTextMessage(cid, 22, "Please talk to the NPC before entering the arena.")	
		setPlayerStorageValue(cid,5029,-1)   -- reset the player arena status (hard med easy) 
		setPlayerStorageValue(cid,3002,-1)   -- if the player is still in the arena or not	
	end		
elseif item.actionid == 2005 and doCheckStone(stone2pos) == 0 then       -- this takes you to room 2
	if getPlayerStorageValue(cid,9000) == playerID then
		local npos = {x = masterpos.x-14, y = masterpos.y, z = masterpos.z}
		local mpos = {x=npos.x, y=npos.y-4, z=npos.z}
		doChange(cid, mpos, monsters[2], npos)	
			if getThingfromPos(stone1pos) ~= 1354 then
				doCreateItem(1354,1,stone1pos)
			end
	else
		doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
		doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)	
		setPlayerStorageValue(cid,5029,-1) 
		setPlayerStorageValue(cid,3002,-1)   
		setPlayerStorageValue(cid,2999,-1)  
		doPlayerSendTextMessage(cid, 22, "You may not log into the arena.")		
	end
elseif item.actionid == 2006 and doCheckStone(stone3pos) == 0 then
	if getPlayerStorageValue(cid,9000) == playerID then
		local npos = {x = masterpos.x-28, y = masterpos.y, z = masterpos.z}
		local mpos = {x=npos.x, y=npos.y-4, z=npos.z}
		doChange(cid, mpos, monsters[3], npos)
			if getThingfromPos(stone2pos) ~= 1354 then
				doCreateItem(1354,1,stone2pos)
			end
	else
		doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
		doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)	
		setPlayerStorageValue(cid,5029,-1) 
		setPlayerStorageValue(cid,3002,-1)   
		setPlayerStorageValue(cid,2999,-1)  
		doPlayerSendTextMessage(cid, 22, "You may not log into the arena.")		
	end
elseif item.actionid == 2007 and doCheckStone(stone4pos) == 0 then
	if getPlayerStorageValue(cid,9000) == playerID then
		local npos = {x = masterpos.x-42, y = masterpos.y, z = masterpos.z}
		local mpos = {x=npos.x, y=npos.y-4, z=npos.z}
		doChange(cid, mpos, monsters[4], npos)
			if getThingfromPos(stone3pos) ~= 1354 then
				doCreateItem(1354,1,stone3pos)
			end
	else
		doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
		doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)	
		setPlayerStorageValue(cid,5029,-1) 
		setPlayerStorageValue(cid,3002,-1)   
		setPlayerStorageValue(cid,2999,-1)  
		doPlayerSendTextMessage(cid, 22, "You may not log into the arena.")		
	end
elseif item.actionid == 2008 and doCheckStone(stone5pos) == 0 then
	if getPlayerStorageValue(cid,9000) == playerID then
		local npos = {x = masterpos.x-36, y = masterpos.y-13, z = masterpos.z}
		local mpos = {x=npos.x, y=npos.y-4, z=npos.z}
		doChange(cid, mpos, monsters[5], npos)
			if getThingfromPos(stone4pos) ~= 1354 then
				doCreateItem(1354,1,stone4pos)
			end
	else
		doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
		doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)	
		setPlayerStorageValue(cid,5029,-1) 
		setPlayerStorageValue(cid,3002,-1)   
		setPlayerStorageValue(cid,2999,-1)  
		doPlayerSendTextMessage(cid, 22, "You may not log into the arena.")		
	end
elseif item.actionid == 2009 and doCheckStone(stone6pos) == 0 then
	if getPlayerStorageValue(cid,9000) == playerID then
		local npos = {x = masterpos.x-22, y = masterpos.y-13, z = masterpos.z}
		local mpos = {x=npos.x, y=npos.y-4, z=npos.z}
		doChange(cid, mpos, monsters[6], npos)
			if getThingfromPos(stone5pos) ~= 1354 then
				doCreateItem(1354,1,stone5pos)
			end
	else
		doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
		doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)	
		setPlayerStorageValue(cid,5029,-1) 
		setPlayerStorageValue(cid,3002,-1)   
		setPlayerStorageValue(cid,2999,-1)  
		doPlayerSendTextMessage(cid, 22, "You may not log into the arena.")		
	end
elseif item.actionid == 2010 and doCheckStone(stone7pos) == 0 then
	if getPlayerStorageValue(cid,9000) == playerID then
		local npos = {x = masterpos.x-8, y = masterpos.y-13, z = masterpos.z}
		local mpos = {x=npos.x, y=npos.y-4, z=npos.z}
		doChange(cid, mpos, monsters[7], npos)
			if getThingfromPos(stone6pos) ~= 1354 then
				doCreateItem(1354,1,stone6pos)
			end
	else
		doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
		doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)	
		setPlayerStorageValue(cid,5029,-1) 
		setPlayerStorageValue(cid,3002,-1)   
		setPlayerStorageValue(cid,2999,-1)  
		doPlayerSendTextMessage(cid, 22, "You may not log into the arena.")		
	end
elseif item.actionid == 2011 and doCheckStone(stone8pos) == 0 then
	if getPlayerStorageValue(cid,9000) == playerID then
		local npos = {x = masterpos.x-16, y = masterpos.y-26, z = masterpos.z}
		local mpos = {x=npos.x, y=npos.y-4, z=npos.z}
		doChange(cid, mpos, monsters[8], npos)
			if getThingfromPos(stone7pos) ~= 1354 then
				doCreateItem(1354,1,stone7pos)
			end
	else
		doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
		doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)	
		setPlayerStorageValue(cid,5029,-1) 
		setPlayerStorageValue(cid,3002,-1)   
		setPlayerStorageValue(cid,2999,-1)  
		doPlayerSendTextMessage(cid, 22, "You may not log into the arena.")		
	end
elseif item.actionid == 2012 and doCheckStone(stone9pos) == 0 then
	if getPlayerStorageValue(cid,9000) == playerID then
		local npos = {x = masterpos.x-30, y = masterpos.y-26, z = masterpos.z}
		local mpos = {x=npos.x, y=npos.y-4, z=npos.z}
		doChange(cid, mpos, monsters[9], npos)
			if getThingfromPos(stone8pos) ~= 1354 then
				doCreateItem(1354,1,stone8pos)
			end
	else
		doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
		doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)	
		setPlayerStorageValue(cid,5029,-1) 
		setPlayerStorageValue(cid,3002,-1)   
		setPlayerStorageValue(cid,2999,-1) 
		doPlayerSendTextMessage(cid, 22, "You may not log into the arena.")		 
	end
elseif item.actionid == 2013 and doCheckStone(stone10pos) == 0 then   -- leads to room ten
	if getPlayerStorageValue(cid,9000) == playerID then
		local npos = {x = masterpos.x-24, y = masterpos.y-39, z = masterpos.z}
		local mpos = {x = npos.x, y = npos.y-4, z = npos.z}
		doChange(cid, mpos, monsters[10], npos)
			if getThingfromPos(stone9pos) ~= 1354 then
				doCreateItem(1354,1,stone9pos)
			end
	else
		doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
		doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)	
		setPlayerStorageValue(cid,5029,-1) 
		setPlayerStorageValue(cid,3002,-1)   
		setPlayerStorageValue(cid,2999,-1)  
		doPlayerSendTextMessage(cid, 22, "You may not log into the arena.")					
	end
elseif item.actionid == 2014 then
	local npos = {x = masterpos.x+12, y = masterpos.y-20, z = masterpos.z-1} -- exit
		if getThingfromPos(stone10pos) ~= 1354 then
			doCreateItem(1354,1,stone10pos)
		end
		if getPlayerStorageValue(cid,5029) == 1 then  -- easy mode
			setPlayerStorageValue(cid,3001,2)
		elseif getPlayerStorageValue(cid,5029) == 2 then  -- medium mode
			setPlayerStorageValue(cid,3001,3)
		elseif getPlayerStorageValue(cid,5029) == 3 then  -- hard mode
			setPlayerStorageValue(cid,3001,4)
		end
			doTeleportThing(cid, npos)
			doPlayerSay(cid, "Respect and honor to you, champion!", 16)
			doSendMagicEffect(npos,10)
			arenaOver(cid)
elseif item.actionid == 3011 then  -- room to the right of the NPC    this will start the time limit
	if isPlayer(cid) == TRUE then  --make more efficient with (and) later
		if getPlayerAccess(cid) < 3 then -- makes sure the player is not a monster/GM	
			if getPlayerStorageValue(cid, 3002) ~= 1 or getGlobalStorageValue(3000) ~= 1 then 
				doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
				doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)	
				doPlayerSendTextMessage(cid, 22, "You may not log into the arena.")						
				arenaOver(cid)
			elseif getPlayerStorageValue(cid, 2998) ~= 1 then
				uniqueID = getGlobalStorageValue(9000) 
				local passArgs = {cid = cid, monster = monster, uniqueID = uniqueID}
				addEvent(afterTimeLimit,timeLimit,passArgs)
				setPlayerStorageValue(cid,2998,1)
			end
		end
	end		
				
elseif doCheckStone(stone10pos) == 1 then -- confused yet?
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

local function doRemoveStone(stonepos)  
	repeat
		local stone1 = getThingfromPos(stonepos)
			if stone1.itemid == 1354 then
				doRemoveItem(stone1.uid,1)
			end
	until stone1.itemid ~= 1354
end

local function doCheckBody(moveitem, stonepos, monster)
local stone = getThingfromPos(stonepos)
	if (moveitem.itemid == 6324 and stone.itemid == 1354) then   
		doRemoveStone(stonepos)
		doRemoveItem(moveitem.uid,1)
		doSendMagicEffect(stonepos,2)	
		if getGlobalStorageValue(3000) == 1 then
			doSendAnimatedText(pos,"Victory!",198)
		else		
			doCheckStoneId(stone1pos)
			doCheckStoneId(stone2pos)
			doCheckStoneId(stone3pos)
			doCheckStoneId(stone4pos)
			doCheckStoneId(stone5pos)
			doCheckStoneId(stone6pos)
			doCheckStoneId(stone7pos)
			doCheckStoneId(stone8pos)
			doCheckStoneId(stone9pos)
			doCheckStoneId(stone10pos)
		end
	elseif moveitem.itemid == 3058 or moveitem.itemid == 3065 then   
			--doRemoveItem(moveitem.uid,1)     -- server needs time to add the bp and shit (i guess)  to the body so we use addEvent to do it 1 second later       otherwise - crash
			local dPos = getThingPos(moveitem.uid)
			local passArgs = {dPos = dPos}
			addEvent(removeCorpse,1000,passArgs)
			doCreatureAddHealth(monster,-10000)
			--local pos = getThingPos(monster)
			doCheckStoneId(stone1pos)
			doCheckStoneId(stone2pos)
			doCheckStoneId(stone3pos)
			doCheckStoneId(stone4pos)
			doCheckStoneId(stone5pos)
			doCheckStoneId(stone6pos)
			doCheckStoneId(stone7pos)
			doCheckStoneId(stone8pos)
			doCheckStoneId(stone9pos)
			doCheckStoneId(stone10pos)
			setGlobalStorageValue(3000,-1)       --  if the arena is in use or not
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

function after1second(passArgs) -- this will check the players position after the NPC has checked its storages and decided to tp it or not   (i know its inefficient but it works and is flawless)
local Ppos = getPlayerPosition(passArgs.cid)
if (Ppos.x > masterpos.x+22) then -- player was not teleported by the NPC and doesnt need to be in that area.
	doTeleportThing(passArgs.cid,{x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
	doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)
	doPlayerSendTextMessage(passArgs.cid, 22, "Please talk to the NPC before entering the arena.")	
else
	local stone = getThingfromPos(stone1pos)
	doSetItemActionId(stone.uid,6000)
	local pos = getThingPos(stone.uid)
	monster = doSummonCreature(monsters[1], {x=pos.x+5, y=pos.y-2, z=pos.z})
	doSendAnimatedText(npos,"Fight!",198)	
	doSendMagicEffect({x=pos.x+5, y=pos.y-2, z=pos.z},10)
end
end

function removeCorpse(passArgs)
local dPos = passArgs.dPos
local body = getThingfromPos({x=dPos.x, y=dPos.y, z=dPos.z, stackpos=255}) -- FINALLY
doRemoveItem(body.uid,1)
end

function afterTimeLimit(passArgs)
doCreatureAddHealth(passArgs.monster,-10000)
end