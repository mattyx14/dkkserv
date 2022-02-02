local mType = Game.createMonsterType("adamantoise")
local monster = {}

monster.name = "Adamantoise"
monster.description = "a adamantoise"
monster.experience = 15750
monster.outfit = {
	lookType = 361,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 9300
monster.maxHealth = 9300
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 6073
monster.speed = 300
monster.summonCost = 0
monster.maxSummons = 1

monster.changeTarget = {
	interval = 5000,
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
	targetDistance = 1,
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
	{type = COMBAT_PHYSICALDAMAGE, percent = 70},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -900, maxDamage = -1000},
	{name ="melee", interval = 10000, chance = 100, minDamage = -1000, maxDamage = -1800}
}

monster.defenses = {
	defense = 18,
	armor = 18
}

monster.summons = {
	{name = "land turtle", chance = 6, interval = 1000}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 5678, chance = 14000, maxCount = 3},
	{id = 2667, chance = 10000, maxCount = 3},
	{id = 2789, chance = 2000, maxCount = 4},
	{id = 2391, chance = 2000},
	{id = 2787, chance = 15000, maxCount = 2},
	{id = 2671, chance = 17000, maxCount = 2}
}

mType:register(monster)
