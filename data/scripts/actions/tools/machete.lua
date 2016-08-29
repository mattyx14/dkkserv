local JUNGLE_GRASS = { 2782, 3985, 19433 }
local WILD_GROWTH = { 1499, 11099 }

local machete = Action()

function machete.onUse(player, item, fromPosition, target, toPosition, isHotkey)
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

machete:id(2420, 2442)
machete:register()
