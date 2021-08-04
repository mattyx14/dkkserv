local reflectIce = CreatureEvent("ReflectIce")
function reflectIce.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_ICEDAMAGE then
		creature:addHealth(primaryDamage)
		primaryDamage = 0
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end
reflectIce:register()
