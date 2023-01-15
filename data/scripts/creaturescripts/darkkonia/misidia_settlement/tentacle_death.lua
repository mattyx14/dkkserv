local tentacle = {'tentacle 1', 'tentacle 2', 'tentacle 3', 'tentacle 4', 'tentacle 5'}
local tentacleDeath = CreatureEvent("TentacleDeath")
function tentacleDeath.onKill(creature, target)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local targetMonster = target:getMonster()
	if not targetMonster or targetMonster:getMaster() then
		return true
	end

	local bossConfig = tentacle[targetMonster:getName():lower()]
	if not bossConfig then
		return true
	end
	stopEvent(revertTheKraken)
	local thekraken = Tile(Position(1037, 6, 12)):getTopCreature()
	if thekraken then
		thekraken:teleportTo(Position(1052, 30, 12))
		thekraken:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end
tentacleDeath:register()
