local mType = Game.createMonsterType("diseased dan")
local monster = {}

monster.name = "Diseased Dan"
monster.description = "a Diseased Dan"
monster.experience = 300
monster.outfit = {
	lookType = 299,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 2000
monster.maxHealth = 2000
monster.runHealth = 1
monster.race = "venom"
monster.corpse = 8951
monster.speed = 250
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0
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
	staticAttackChance = 83,
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
	{text = "Tchhh!", yell = false},
	{text = "Slurp!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 85},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 60, attack = 65, condition = {type = CONDITION_POISON, startDamage = 40, interval = 4000}},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_LIFEDRAIN, minDamage = -90, maxDamage = -140, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 2000, chance = 8, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -175, radius = 3, target = false, effect = CONST_ME_STONES},
	{name ="Paralyze", interval = 3000, chance = 17, range = 7, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 15,
	armor = 10,
	{name ="haste", interval = 10000, chance = 40, effect = CONST_ME_MAGIC_GREEN},
	{name ="combat", interval = 5000, chance = 20, type = COMBAT_HEALING, minDamage = 50, maxDamage = 80, effect = CONST_ME_MAGIC_BLUE}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2148, chance = 100000, maxCount = 59},
	{id = 8472, chance = 5100},
	{id = 8473, chance = 4900},
	{id = 8873, chance = 600},
	{id = 1987, chance = 100000}
}

mType:register(monster)
