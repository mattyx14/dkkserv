local config = {
	[50220] = Position(1546, 976, 4),
	[50221] = Position(1539, 989, 3)
}

local vengothTeleports = MoveEvent()
function vengothTeleports.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local targetPosition = config[item.actionid]
	if not targetPosition then
		return true
	end

	player:teleportTo(targetPosition)
	targetPosition:sendMagicEffect(CONST_ME_ICETORNADO)
	return true
end

vengothTeleports:type("stepin")
for index, value in pairs(config) do
	vengothTeleports:aid(index)
end
vengothTeleports:register()
