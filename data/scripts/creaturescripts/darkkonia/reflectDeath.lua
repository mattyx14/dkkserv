local reflectDeath = CreatureEvent("ReflectDeath")
function reflectDeath.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_DEATHDAMAGE then
		creature:addHealth(primaryDamage)
		primaryDamage = 0
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end
reflectDeath:register()
