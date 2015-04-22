local oneByQuest = true
local level = 120
local positions = {
	kick = { x = 479, y = 1414, z = 7 },
	summon = {
		{x = 482, y = 1429, z = 7},
		{x = 474, y = 1429, z = 7},
		{x = 484, y = 1435, z = 7},
		{x = 473, y = 1436, z = 7}
	}
}

local summons = {
	[1] = {"Demon", "Grim Reaper", "the old widow", "Behemoth"},
	[2] = {"Dark Torturer", "Banshee", "Betrayed Wraith", "Blightwalker"},
	[3] = {"Bonebeast", "Braindeath", "Diabolic Imp", "the old widow"},
	[4] = {"Hand of Cursed Fate", "Lich", "Undead Dragon", "demon"},
	[5] = {"braindeath", "Demon", "plaguesmith", "Diabolic Imp"},
	[6] = {"Behemoth", "Banshee", "the old widow", "plaguesmith"},
	[7] = {"Dark Torturer", "Undead Dragon", "Demon", "Demon"},
	[8] = {"the old widow", "Betrayed Wraith", "the old widow", "Giant Spider"},
	[9] = {"Demon", "Banshee", "Blightwalker", "the old widow"},
	[10] = {"Grim Reaper", "Demon", "Diabolic Imp", "Braindeath"},
	[11] = {"Banshee", "Grim Reaper", "Hand of Cursed fate", "Demon"}
}

local areaPosition = {
	{x = 473, y = 1426, z = 7, stackpos = 255},
	{x = 487, y = 1440, z = 7, stackpos = 255}
}

local demonOak = {8288, 8289, 8290, 8291}

local storages = {
	done = 35700,
	cutTree = 36901
}

local blockingTree = {
	[2709] = {32193, 3669}
}

local floorDamage = {
	min = 270,
	max = 310,
	type = COMBAT_EARTHDAMAGE,
	effect = CONST_ME_BIGPLANTS
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if blockingTree[itemEx.itemid] and itemEx.uid == blockingTree[itemEx.itemid][1] then
		local tree = toPosition
		if isInRange(tree, areaPosition[1], areaPosition[2]) then
			print("[Warning - Action::Demon Oak Script] Dead tree position is inside the quest area positions.\nDead tree position: (x: " .. tree.x .. ", y: " .. tree.y .. ", z: " .. tree.z .. ")\nNorth-West area position (x: " .. areaPosition[1].x .. ", y: " .. areaPosition[1].y .. ", z: " .. areaPosition[1].z .. ")\nSouth-West area position (x: " .. areaPosition[2].x .. ", y: " .. areaPosition[2].y .. ", z: " .. areaPosition[2].z .. ")\nScript will not work correctly, please fix it.")
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Something is wrong, please contact a staff member.")
			return true
		end

		if getPlayerLevel(cid) < level then
			doPlayerSendCancel(cid, "You need level " .. level .. " or higher to enter to the quest area.")
			return true
		end

		if getCreatureStorage(cid, storages.done) > 0 then
			doPlayerSendCancel(cid, "You already done this quest.")
			return true
		end

		if getCreatureStorage(cid, storages.cutTree) > 0 then return false end

		if oneByQuest then
		local players = getPlayersOnline()
			for _, pid in ipairs(players) do
				if isInRange(getCreaturePosition(pid), areaPosition[1], areaPosition[2]) then
					doPlayerSendCancel(cid, "Wait until " .. getCreatureName(pid) .. " finish the quest.")
					return true
				end
			end
		end

		doTransformItem(itemEx.uid, blockingTree[itemEx.itemid][2])
		doSendMagicEffect(toPosition, CONST_ME_POFF)
		doMoveCreature(cid, SOUTH)
		doCreatureSetStorage(cid, storages.cutTree, 1)
		return true

	elseif isInArray(demonOak, itemEx.itemid) then
		local get = getCreatureStorage(cid, itemEx.itemid)
		if get == -1 then doCreatureSetStorage(cid, itemEx.itemid, 1) end

		local k = 0
		for i = 8288, 8291 do
			if(getCreatureStorage(cid, i) == 12) then
				k = k + 1
			end
		end

		if(k == 4) then
			if getCreaturesInRange(monster, areaPosition[1], areaPosition[2], count) > 0 then
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Please kill all monsters first.")
				doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
			end

			doTeleportThing(cid, positions.kick)
			doCreatureSetStorage(cid, storages.done, 1)
			return true
		end

		if getCreatureStorage(cid, itemEx.itemid) >= 12 then
			doSendMagicEffect(toPosition, CONST_ME_POFF)
			return true
		end

		if(math.random(100) == 1) then
			doCreatureSetStorage(cid, itemEx.itemid, 12)
			return true
		end

		if summons[get] then
			for i = 1, table.maxn(summons[get]) do
				doCreateMonster(summons[get][i], positions.summon[math.random(table.maxn(positions.summon))])
			end
			doSendMagicEffect(toPosition, CONST_ME_DRAWBLOOD)
			doCreatureSetStorage(cid, itemEx.itemid, get + 1)
			if math.random(100) >= 50 then
				doTargetCombatHealth(0, cid, floorDamage.type, -floorDamage.min, -floorDamage.max, floorDamage.effect)
			end
		end
	return false
	end
end

function getCreaturesInRange(type, fromPos, toPos, get)
local types = {
	["player"] = isPlayer,
	["monster"] = isMonster,
	["npc"] = isNpc,
	["creature"] = isCreature
}

local tmp = {}
	local type = types[type]
	if(not type) then return print("[Warning - Function::getCreaturesInRange] Unknow type " .. (type and type or "")) end

	local thing = nil
	for x = fromPos.x, toPos.x do
		for y = fromPos.y, toPos.y do
			for z = fromPos.z, toPos.z do
				for s = 1, 253 do
					local position = {x = x, y = y, z = z, stackpos = s}
					thing = getTileThingByPos(position)
					if(type(thing.uid) == true) then
						table.insert(tmp, thing.uid)
					end
				end
			end
		end
	end

	if(get == "count") then
		return table.maxn(tmp)
	elseif(get == "name") then
		return tmp
	else
		print("[Warning - Function::getCreaturesInRange] Unknow type to get " .. (get and get or ""))
	end
end
