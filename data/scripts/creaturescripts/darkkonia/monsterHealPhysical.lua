local monsterHealPhysical = CreatureEvent("MonsterHealPhysical")
function monsterHealPhysical.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_PHYSICALDAMAGE then
		creature:addHealth(primaryDamage)
		primaryDamage = 0
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end
monsterHealPhysical:register()
