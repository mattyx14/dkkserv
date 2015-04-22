local config = {
	removeOnUse = "no",
	usableOnTarget = "yes", -- can be used on target? (fe. healing friend)
	splashable = "yes",
	range = -1,
	area = {1, 1} -- if not set correctly, the message will be sent only to user of the item
}

local multiplier = {
	health = 1.0,
	mana = 1.0
}

local POTIONS = {
	-- Heal
	[8704] = {empty = 7636, splash = 42, health = {50, 100}}, -- small health potion
	[7618] = {empty = 7636, splash = 42, health = {250, 300}}, -- health potion
	[7588] = {empty = 7634, splash = 42, health = {350, 600}, level = 50, vocations = {11, 12, 13, 14, 15, 16, 17, 18, 19, 20}, vocStr = "knights and paladins"}, -- strong health potion
	[7591] = {empty = 7635, splash = 42, health = {800, 1100}, level = 80, vocations = {11, 12, 13, 14, 15, 16, 17, 18, 19, 20}, vocStr = "knights and paladins"}, -- great health potion
	[8473] = {empty = 7635, splash = 42, health = {1350, 1700}, level = 200, vocations = {14, 15, 19, 20}, vocStr = "lord knights and snipers"}, -- ultimate health potion
	-- MISSING POTIONS ULTRA HEALTH
	-- [0] = {empty = 7635, splash = 42, health = {2050, 2500}, level = 300, vocations = {14, 15, 19, 20}, vocStr = "lord knights and snipers"}, -- ultimate health potion

	-- Mana
	[7620] = {empty = 7636, splash = 47, mana = {200, 240}}, -- mana potion
	[7589] = {empty = 7634, splash = 47, mana = {350, 500}, level = 50, vocations = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, vocStr = "sorcerers, druids and paladins"}, -- strong mana potion
	[7590] = {empty = 7635, splash = 47, mana = {600, 800}, level = 80, vocations = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, vocStr = "sorcerers and druids"}, -- great mana potion
	[8472] = {empty = 7635, splash = 43, mana = {850, 1300}, level = 200, vocations = {4, 5, 9, 10}, vocStr = "wizards and warlocks"} -- great spirit potion
	-- MISSING POTIONS ULTRA MANA
	-- [0] = {empty = 7635, splash = 43, mana = {1450, 2000}, level = 300, vocations = {4, 5, 9, 10}, vocStr = "wizards and warlocks"} -- great spirit potion
}

for index, potion in pairs(POTIONS) do
	if(type(index) == 'number')then
		for k, v in pairs(config) do
			if(not potion[k]) then
				potion[k] = v
			end
		end

		if(potion.removeOnUse) then
			potion.removeOnUse = getBooleanFromString(potion.removeOnUse)
		end

		if(potion.usableOnTarget) then
			potion.usableOnTarget = getBooleanFromString(potion.usableOnTarget)
		end

		if(potion.splashable) then
			potion.splashable = getBooleanFromString(potion.splashable)
		end

		if(type(potion.health) == 'table' and table.maxn(potion.health) > 1) then
			potion.health[1] = math.ceil(potion.health[1] * multiplier.health)
			potion.health[2] = math.ceil(potion.health[2] * multiplier.health)
		else
			potion.health = nil
		end


		if(type(potion.mana) == 'table' and table.maxn(potion.mana) > 1) then
			potion.mana[1] = math.ceil(potion.mana[1] * multiplier.mana)
			potion.mana[2] = math.ceil(potion.mana[2] * multiplier.mana)
		else
			potion.mana = nil
		end

		POTIONS[index] = potion
	end
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local potion = POTIONS[item.itemid]
	if(not potion) then
		return false
	end

	if(not isPlayer(itemEx.uid) or (not potion.usableOnTarget and cid ~= itemEx.uid)) then
		if(not potion.splashable or not potion.splash) then
			return false
		end

		if(toPosition.x == CONTAINER_POSITION) then
			toPosition = getThingPosition(item.uid)
		end

		doDecayItem(doCreateItem(POOL, potion.splash, toPosition))
		doRemoveItem(item.uid, 1)
		if(not potion.empty or potion.removeOnUse) then
			return true
		end

		if(fromPosition.x ~= CONTAINER_POSITION) then
			doCreateItem(potion.empty, fromPosition)
		else
			doPlayerAddItem(cid, potion.empty, 1)
		end

		return true
	end

	if(((potion.level and getPlayerLevel(itemEx.uid) < potion.level) or (potion.vocations and not isInArray(potion.vocations, getPlayerVocation(itemEx.uid)))) and
		not getPlayerCustomFlagValue(cid, PLAYERCUSTOMFLAG_GAMEMASTERPRIVILEGES))
	then
		doCreatureSay(itemEx.uid, "Only " .. potion.vocStr .. (potion.level and (" of level " .. potion.level) or "") .. " or above may drink this fluid.", TALKTYPE_MONSTER, false, cid)
		return true
	end

	if(potion.range > 0 and cid ~= itemEx.uid and getDistanceBetween(getThingPosition(cid), getThingPosition(itemEx.uid)) > potion.range and not getPlayerCustomFlagValue(cid, PLAYERCUSTOMFLAG_CANUSEFAR)) then
		doPlayerSendDefaultCancel(cid, RETURNVALUE_TOOFARAWAY)
		return true
	end

	if(potion.health and not doTargetCombatHealth(cid, itemEx.uid, COMBAT_HEALING, potion.health[1], potion.health[2], CONST_ME_MAGIC_BLUE, false)) then
		return false
	end

	if(potion.mana and not doTargetCombatMana(cid, itemEx.uid, potion.mana[1], potion.mana[2], CONST_ME_MAGIC_BLUE, false)) then
		return false
	end

	if(type(potion.area) == 'table' and table.maxn(potion.area) > 1) then
		for i, tid in ipairs(getSpectators(getThingPosition(itemEx.uid), potion.area[1], potion.area[2])) do
			if(isPlayer(tid)) then
				doCreatureSay(itemEx.uid, "Aaaah...", TALKTYPE_MONSTER, false, tid)
			end
		end
	else
		doCreatureSay(itemEx.uid, "Aaaah...", TALKTYPE_MONSTER, false, itemEx.uid)
		if(itemEx.uid ~= cid) then
			doCreatureSay(itemEx.uid, "Aaaah...", TALKTYPE_MONSTER, false, cid)
		end
	end

	doRemoveItem(item.uid, 1)
	if(not potion.empty or potion.removeOnUse) then
		return true
	end

	if(fromPosition.x ~= CONTAINER_POSITION) then
		doCreateItem(potion.empty, fromPosition)
	else
		doPlayerAddItem(cid, potion.empty, 1)
	end

	return true
end
