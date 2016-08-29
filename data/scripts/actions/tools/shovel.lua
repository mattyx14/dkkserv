local shovel = Action()

local holes = {468, 481, 483, 7932}
local others = {7932}

function shovel.onUse(player, item, fromPosition, target, toPosition, isHotkey)
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

shovel:id(2554, 5710)
shovel:register()
