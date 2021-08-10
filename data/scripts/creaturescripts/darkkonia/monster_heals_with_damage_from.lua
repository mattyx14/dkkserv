local monsterHealDeath = CreatureEvent("MonsterHealDeath")
local monsterHealDrown = CreatureEvent("MonsterHealDrown")
local monsterHealEarth = CreatureEvent("MonsterHealEarth")
local monsterHealEnergy = CreatureEvent("MonsterHealEnergy")
local monsterHealFire = CreatureEvent("MonsterHealFire")
local monsterHealHoly = CreatureEvent("MonsterHealHoly")
local monsterHealIce = CreatureEvent("MonsterHealIce")
local monsterHealPhysical = CreatureEvent("MonsterHealPhysical")

function monsterHealDeath.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_DEATHDAMAGE then
		creature:addHealth(primaryDamage)
		primaryDamage = 0
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function monsterHealDrown.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_DROWNDAMAGE then
		creature:addHealth(primaryDamage)
		primaryDamage = 0
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function monsterHealEarth.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_EARTHDAMAGE then
		creature:addHealth(primaryDamage)
		primaryDamage = 0
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function monsterHealEnergy.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_ENERGYDAMAGE then
		creature:addHealth(primaryDamage)
		primaryDamage = 0
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function monsterHealFire.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_FIREDAMAGE then
		creature:addHealth(primaryDamage)
		primaryDamage = 0
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function monsterHealHoly.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_HOLYDAMAGE then
		creature:addHealth(primaryDamage)
		primaryDamage = 0
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function monsterHealIce.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_ICEDAMAGE then
		creature:addHealth(primaryDamage)
		primaryDamage = 0
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

function monsterHealPhysical.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)
	if primaryType == COMBAT_PHYSICALDAMAGE then
		creature:addHealth(primaryDamage)
		primaryDamage = 0
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

monsterHealDeath:register()
monsterHealDrown:register()
monsterHealEarth:register()
monsterHealEnergy:register()
monsterHealFire:register()
monsterHealHoly:register()
monsterHealIce:register()
monsterHealPhysical:register()
