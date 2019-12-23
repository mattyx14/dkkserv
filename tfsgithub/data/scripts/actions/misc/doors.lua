local ids = {10032, {1209, 1214}, {1219, 1262}, {1539, 1542}, {2086, 2092}, {3535, 3552}, {4913, 4918}, {5082, 5085}, {5098, 5145}, {5278, 5295}, {5515, 5518}, {5732, 5737}, {5745, 5749}, {6192, 6209}, {6249, 6266}, {6795, 6802},
			{6891, 6908}, {7033, 7050}, {7054, 7057}, {8541, 8558}, {9165, 9184}, {9267, 9284}, {10268, 10285}, {10468, 10486}, {10775, 10777}, {10780, 10786}, {10789, 10792}, {12092, 12105}, {12188, 12190}, {12193, 12199},
			{12202, 12205}, {19840, 19857}, {19980, 19997}, {20273, 20290}, {17235, 17238}, {18208, 18209}, {13020, 13023}}

local door = Action()

function door.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local itemId = item:getId()
	if isInArray(questDoors, itemId) then
		if player:getStorageValue(item.actionid) ~= -1 then
			item:transform(itemId + 1)
			player:teleportTo(toPosition, true)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "The door seems to be sealed against unwanted intruders.")
		end
		return true
	elseif isInArray(levelDoors, itemId) then
		if item.actionid > 0 and player:getLevel() >= item.actionid - 1000 then
			item:transform(itemId + 1)
			player:teleportTo(toPosition, true)
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "Only the worthy may pass.")
		end
		return true
	elseif isInArray(keys, itemId) then
		if target.actionid > 0 then
			if item.actionid == target.actionid and doors[target.itemid] then
				target:transform(doors[target.itemid])
				return true
			end
			player:sendTextMessage(MESSAGE_STATUS_SMALL, "The key does not match.")
			return true
		end
		return false
	end

	if isInArray(horizontalOpenDoors, itemId) or isInArray(verticalOpenDoors, itemId) then
		local doorCreature = Tile(toPosition):getTopCreature()
		if doorCreature ~= nil then
			toPosition.x = toPosition.x + 1
			local query = Tile(toPosition):queryAdd(doorCreature, bit.bor(FLAG_IGNOREBLOCKCREATURE, FLAG_PATHFINDING))
			if query ~= RETURNVALUE_NOERROR then
				toPosition.x = toPosition.x - 1
				toPosition.y = toPosition.y + 1
				query = Tile(toPosition):queryAdd(doorCreature, bit.bor(FLAG_IGNOREBLOCKCREATURE, FLAG_PATHFINDING))
			end

			if query ~= RETURNVALUE_NOERROR then
				player:sendTextMessage(MESSAGE_STATUS_SMALL, query)
				return true
			end

			doorCreature:teleportTo(toPosition, true)
		end

		if not isInArray(openSpecialDoors, itemId) then
			item:transform(itemId - 1)
		end
		return true
	end

	if doors[itemId] then
		if item.actionid == 0 then
			item:transform(doors[itemId])
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "It is locked.")
		end
		return true
	end
	return false
end

for i = 1, #ids do
	if type(ids[i]) == "table" then
		for x = ids[i][1], ids[i][2] do
			door:id(x)
		end
	else
		door:id(ids[i])
	end
end
door:register()
