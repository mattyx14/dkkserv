-- Umby

--  masterpos is the location that the player will first be teleported to.   It is TWO squares south of the MIDDLE of the FIRST room       (see screen shot)
local masterpos = {x=924, y=1486, z=7, stackpos=1}  -- this must match the position in the NPC script
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

function onStepIn(cid, item, pos)
playerID = getGlobalStorageValue(9000)
	local function doCheckStoneId(stonepos)
		local stone = getThingfromPos(stonepos)
			if stone.itemid ~= 1354 then
				doCreateItem(1354,1,stonepos)
			end
				if stone.actionid == 6000 then
					doSetItemActionId(stone.uid,5999)
				end
	end

	local function arenaOver(cid)        --  if the player leaves, dies, logs out, wins, or is teleported out:	
		setPlayerStorageValue(cid,5029,-1)   -- reset the player arena status (hard med easy) 
		setPlayerStorageValue(cid,3002,-1)   -- player should be in the arena or not
		setPlayerStorageValue(cid,2999,-1)   -- dont mind this (addEvent)
	end
	if  (item.actionid >= 3001 and item.actionid <= 3010) then
			if isPlayer(cid) == TRUE then  --make more efficient with (and) later
				if getPlayerAccess(cid) < 3 then -- makes sure the player is not a monster/GM
					if (getPlayerStorageValue(cid, 3002) ~= 1 or getGlobalStorageValue(3000) ~= 1) then  -- player is not supposed to be in arena and must have logged in
						doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
						doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)
						doPlayerSendTextMessage(cid, 22, "You may not log into the arena.")
						arenaOver(cid)		
					elseif (getPlayerStorageValue(cid, 9000) ~= playerID) then -- this means the player probably logged off and waited for someone else to start the arena, then logged in.   (its gotta be flawless!)
						doTeleportThing(cid, {x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z})
						doSendMagicEffect({x = masterpos.x+21, y = masterpos.y-2, z = masterpos.z},10)
						doPlayerSendTextMessage(cid, 22, "You are not supposed to be in the arena at the moment.")
						arenaOver(cid)						
					end
				end
			elseif (isCreature(cid) == TRUE and getGlobalStorageValue(3000) ~= 1) then	-- if the timer runs out this will remove the creature
						doCreatureAddHealth(cid,-10000)
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
	end
end