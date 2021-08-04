local reflectFire = CreatureEvent("ReflectFire")
function reflectFire.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_FIREDAMAGE then
		creature:addHealth(primaryDamage)
		primaryDamage = 0
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end
reflectFire:register()
