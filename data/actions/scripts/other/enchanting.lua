local config = {
	manaCost = 300,
	soulCost = 2,
}

local spheres = {
	[7759] = {3, 7},
	[7760] = {1, 5},
	[7761] = {2, 6},
	[7762] = {4, 8},
}

local enchantableGems = {2147, 2146, 2149, 2150}
local enchantableItems = {}

local enchantingAltars = {
	{7504, 7505, 7506, 7507},
	{7508, 7509, 7510, 7511},
	{7516, 7517, 7518, 7519},
	{7512, 7513, 7514, 7515},
}

local enchantedGems = {7760, 7759, 7761, 7762}
local enchantedItems = {}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 7760 and target.itemid == 2342 then
		target:transform(2343)
		target:decay()
		item:remove(1)
		toPosition:sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	end

	if item.itemid == 7759 and isInArray({6530, 10021}, target.itemid) then
		target:transform(6132)
		item:remove(1)
		toPosition:sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	end

	if item.itemid == 7760 and isInArray({9934, 10022}, target.itemid) then
		target:transform(9933)
		item:remove(1)
		toPosition:sendMagicEffect(CONST_ME_MAGIC_RED)
		return true
	end

	if isInArray(enchantableGems, item.itemid) then
		local subtype = item.type
		if subtype == 0 then
			subtype = 1
		end

		local mana = config.manaCost * subtype
		if player:getMana() < mana then
			player:sendCancelMessage(RETURNVALUE_NOTENOUGHMANA)
			return false
		end

		local soul = config.soulCost * subtype
		if player:getSoul() < soul then
			player:sendCancelMessage(RETURNVALUE_NOTENOUGHSOUL)
			return false
		end

		local targetId = table.find(enchantableGems, item.itemid)
		if not targetId or not isInArray(enchantingAltars[targetId], target.itemid) then
			return false
		end

		player:addMana(-mana)
		player:addSoul(-soul)
		item:transform(enchantedGems[targetId])
		player:addManaSpent(mana * configManager.getNumber(configKeys.RATE_MAGIC))
		player:getPosition():sendMagicEffect(CONST_ME_HOLYDAMAGE)
		return true
	end

	if item.itemid == 7761 and isInArray({9949, 9954}, target.itemid) then
		target:transform(target.itemid - 1)
		target:decay()
		item:remove(1)
		toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
		return true
	end

	if isInArray(enchantedGems, item.itemid) then
		if not isInArray(enchantableItems, target.itemid) then
			fromPosition:sendMagicEffect(CONST_ME_POFF)
			return false
		end

		local targetId = table.find(enchantedGems, item.itemid)
		if not targetId then
			return false
		end

		local subtype = target.type
		-- Skip items gave 1000 charges
		if not isInArray({2544, 8905}, target.itemid) then
			subtype = 1000
		end

		target:transform(enchantedItems[target.itemid][targetId], subtype)
		target:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
		item:remove(1)
		return true
	end
	return false
end
