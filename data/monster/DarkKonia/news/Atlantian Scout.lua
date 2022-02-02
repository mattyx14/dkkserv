local mType = Game.createMonsterType("Atlantian Scout")
local monster = {}

monster.name = "Atlantian Scout"
monster.description = "a Atlantian Scout"
monster.experience = 12500
monster.outfit = {
	lookType = 1202,
	lookHead = 85,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 85,
	lookAddons = 1,
	lookMount = 734
}

monster.health = 8900
monster.maxHealth = 8900
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 6080
monster.speed = 360
monster.summonCost = 0
monster.maxSummons = 1

monster.changeTarget = {
	interval = 1,
	chance = 8
}

monster.flags = {
	attackable = true,
	hostile = true,
	summonable = false,
	convinceable = false,
	illusionable = false,
	boss = false,
	pushable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 0,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -180, maxDamage = -490},
	{name ="combat", interval = 1900, chance = 45, type = COMBAT_ICEDAMAGE, minDamage = -160, maxDamage = -320, range = 8, radius = 6, target = true, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO},
	{name ="combat", interval = 1800, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -180, maxDamage = -255, range = 7, radius = 5, target = false, effect = CONST_ME_ICEATTACK}
}

monster.defenses = {
	defense = 5,
	armor = 10
}

monster.summons = {
	{name = "Deepling Scout", chance = 10, interval = 2500, max = 1}
}

monster.loot = {
	{name = "Small Enchanted Sapphire", chance = 11910},
	{name = "Small Enchanted Ruby", chance = 9040},
	{name = "Green Gem", chance = 2300},
	{name = "Blue Gem", chance = 3010},
	{name = "Crystal Mace", chance = 1580},
	{name = "Energy Vein", chance = 3010},
	{name = "Crystalline Armor", chance = 860},
	{name = "Violet Gem", chance = 750},
	{name = "Suspicious Device", chance = 1290},
	{name = "frostheart platemail", chance = 1}
}

mType:register(monster)
