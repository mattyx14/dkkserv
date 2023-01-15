local tentacleEvent = CreatureEvent("TentacleEvent")
function tentacleEvent.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if not Tile(Position(1037, 6, 12)):getTopCreature() then
		if creature:getHealth() < creature:getMaxHealth() then
			creature:getPosition():sendMagicEffect(CONST_ME_ENERGYHIT)
			creature:addHealth(30000, false)
		end
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end
tentacleEvent:register()
