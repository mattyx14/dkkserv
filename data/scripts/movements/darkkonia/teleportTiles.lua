local positions = {
	[24904] = Position(480, 462, 7), -- Ferumbras Energy Wall
	[24906] = Position(1023, 1042, 10), -- Demon Helmet Trap
}

local oramondMovements = MoveEvent()

function oramondMovements.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	local newPosition = positions[item.actionid]
	if newPosition then
		player:teleportTo(newPosition)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end

oramondMovements:type("stepin")

for index, value in pairs(positions) do
	oramondMovements:aid(index)
end

oramondMovements:register()
