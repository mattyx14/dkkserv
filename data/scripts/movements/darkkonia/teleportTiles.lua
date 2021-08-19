local positions = {
	[24904] = Position(480, 462, 7),
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
		player:say("Slrrp!", TALKTYPE_MONSTER_SAY)
	end
	return true
end

oramondMovements:type("stepin")

for index, value in pairs(positions) do
	oramondMovements:aid(index)
end

oramondMovements:register()
