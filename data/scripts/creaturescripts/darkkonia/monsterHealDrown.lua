local monsterHealDrown = CreatureEvent("MonsterHealDrown")
function monsterHealDrown.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_DROWNDAMAGE then
		creature:addHealth(primaryDamage)
		primaryDamage = 0
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end
monsterHealDrown:register()
