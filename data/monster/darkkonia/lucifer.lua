local mType = Game.createMonsterType("lucifer")
local monster = {}

monster.name = "Lucifer"
monster.description = "a Lucifer"
monster.experience = 6000000
monster.outfit = {
	lookType = 862,
	lookHead = 40,
	lookBody = 94,
	lookLegs = 0,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 1333800
monster.maxHealth = 1333800
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 0
monster.speed = 290
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.flags = {
	attackable = true,
	hostile = true,
	summonable = false,
	convinceable = false,
	illusionable = true,
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
	{text = "DESTRUCTION!", yell = true},
	{text = "CHAOS!", yell = true},
	{text = "DEATH TO ALL!", yell = true}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.attacks = {
	{name ="melee", interval = 1500, chance = 100, minDamage = -3080, maxDamage = -5030},
	{name ="combat", interval = 1000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -1650, maxDamage = -1950, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
	{name ="combat", interval = 1600, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -700, maxDamage = -1500, radius = 6, target = false, effect = CONST_ME_ENERGYHIT},
	{name ="combat", interval = 1600, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -800, radius = 6, target = false, effect = CONST_ME_ENERGYHIT},
	{name ="combat", interval = 1000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -750, maxDamage = -1550, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_YELLOW_RINGS}
}

monster.defenses = {
	defense = 145,
	armor = 188,
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 500, maxDamage = 1500, effect = CONST_ME_MAGIC_BLUE},
	{name ="speed", interval = 1000, chance = 35, speed = {min = 800, max = 800}, duration = 6000, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 3000, chance = 10, type = COMBAT_HEALING, minDamage = 3300, maxDamage = 15700, effect = CONST_ME_MAGIC_BLUE}
}

monster.loot = {
}

mType:register(monster)
