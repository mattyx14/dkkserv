local holeId = {
	294, 369, 370, 383, 392, 408, 409, 410, 427, 428, 430, 462, 469, 470, 482,
	484, 485, 489, 924, 3111, 3135, 3136, 7933, 7938, 8170, 8286, 8285, 8284, 8281,
	8280, 8279, 8277, 8276, 8567, 8585, 8596, 8595, 8249, 8250, 8251,
	8252, 8253, 8254, 8255, 8256, 8592, 8972, 9606, 9625, 13190, 14461, 19519, 21536
}

local holes = {468, 481, 483, 7932}
local others = {7932}

local JUNGLE_GRASS = { 2782, 3985, 19433 }
local WILD_GROWTH = { 1499, 11099 }

function destroyItem(player, item, fromPosition, target, toPosition, isHotkey)
	if not target or not target:isItem() then
		return false
	end

	if target:hasAttribute(ITEM_ATTRIBUTE_UNIQUEID) or target:hasAttribute(ITEM_ATTRIBUTE_ACTIONID) then
		return false
	end

	if toPosition.x == CONTAINER_POSITION then
		player:sendCancelMessage(Game.getReturnMessage(RETURNVALUE_NOTPOSSIBLE))
		return true
	end

	local targetId = target.itemid
	local destroyId = ItemType(targetId):getDestroyId()
	if destroyId == 0 then
		return false
	end

	if math.random(7) == 1 then
		local item = Game.createItem(destroyId, 1, toPosition)
		if item ~= nil then
			item:decay()
		end

		-- Move items outside the container
		if target:isContainer() then
			for i = target:getSize() - 1, 0, -1 do
				local containerItem = target:getItem(i)
				if containerItem then
					containerItem:moveTo(toPosition)
				end
			end
		end

		target:remove(1)
	end

	toPosition:sendMagicEffect(CONST_ME_POFF)
	return true
end

function onUseRope(player, item, fromPosition, target, toPosition, isHotkey)
	local tile = Tile(toPosition)
	if not tile then
		return false
	end

	if isInArray(ropeSpots, tile:getGround():getId()) or tile:getItemById(14435) then
		player:teleportTo(toPosition:moveUpstairs(), false)
		return true
	elseif isInArray(holeId, target.itemid) then
		toPosition.z = toPosition.z + 1
		tile = Tile(toPosition)
		if tile then
			local thing = tile:getTopVisibleThing()
			if thing:isItem() and thing:getType():isMovable() then
				return thing:moveTo(toPosition:moveUpstairs())
			elseif thing:isCreature() and thing:isPlayer() then
				return thing:teleportTo(toPosition:moveUpstairs())
			end
		end

		player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		return true
	end

	return false
end

function onUseShovel(player, item, fromPosition, target, toPosition, isHotkey)
	local targetId = target.itemid, target.actionid
	if isInArray(others, targetId) then
		target:transform(targetId + 1)
		target:decay()

		return true
	end

	if toPosition.x == CONTAINER_POSITION then
		return false
	end

	local tile = Tile(toPosition)
	if not tile then
		return false
	end

	local ground = tile:getGround()
	if not ground then
		return false
	end

	local groundId = ground:getId()
	if isInArray(holes, groundId) then
		ground:transform(groundId + 1)
		ground:decay()

		toPosition.z = toPosition.z + 1
		tile:relocateTo(toPosition)
	elseif groundId == 231 then
		local randomValue = math.random(1, 100)
		if randomValue == 1 then
			Game.createItem(2159, 1, toPosition)
		elseif randomValue > 95 then
			Game.createMonster("Scarab", toPosition)
		end
		toPosition:sendMagicEffect(CONST_ME_POFF)
	else
		return false
	end

	return true
end

function onUsePick(player, item, fromPosition, target, toPosition, isHotkey)
	local targetId, targetActionId = target.itemid, target.actionid
	if targetId == 1304 then
		if player:getStorageValue(Storage.VampireQuest.draculaDone) == 1 then
			if targetActionId == 50058 then
				local stoneStorage = Game.getStorageValue(Storage.VampireQuest.draculaStone)
				if stoneStorage ~= 5 then
					Game.setStorageValue(Storage.VampireQuest.draculaStone, math.max(0, stoneStorage) + 1)
				elseif stoneStorage == 5 then
					target:remove()
					Game.setStorageValue(Storage.VampireQuest.draculaStone)
				end

				toPosition:sendMagicEffect(CONST_ME_POFF)
				doTargetCombatHealth(0, player, COMBAT_PHYSICALDAMAGE, -1001, -1109, CONST_ME_NONE)
			end
		end
	end

	if toPosition.x == CONTAINER_POSITION then
		return false
	end

	local tile = Tile(toPosition)
	if not tile then
		return false
	end

	local ground = tile:getGround()
	if not ground then
		return false
	end

	if (ground.uid > 65535 or ground.actionid == 0) and not isInArray(groundIds, ground.itemid) then
		return false
	end

	ground:transform(392)
	ground:decay()

	toPosition.z = toPosition.z + 1
	tile:relocateTo(toPosition)
	return true
end

function onUseMachete(player, item, fromPosition, target, toPosition, isHotkey)
	local targetId = target.itemid
	if isInArray(JUNGLE_GRASS, targetId) then
		target:transform(targetId == 19433 and 19431 or targetId - 1)
		target:decay()
		return true
	end

	if isInArray(WILD_GROWTH, targetId) then
		toPosition:sendMagicEffect(CONST_ME_POFF)
		target:remove()
		return true
	end

	return destroyItem(player, item, fromPosition, target, toPosition, isHotkey)
end

function onUseScythe(player, item, fromPosition, target, toPosition, isHotkey)
	if not isInArray({2550, 10513}, item.itemid) then
		return false
	end

	if target.itemid == 2739 then
		target:transform(2737)
		target:decay()
		Game.createItem(2694, 1, toPosition)
		return true
	end

	return destroyItem(player, target, toPosition)
end
