local mType = Game.createMonsterType("vinon")
local monster = {}

monster.name = "Vinon"
monster.description = "a Vinon"
monster.experience = 3900
monster.outfit = {
	lookType = 299,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 2500
monster.maxHealth = 2500
monster.runHealth = 0
monster.race = "venom"
monster.corpse = 8951
monster.speed = 340
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
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 25},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -180, maxDamage = -380},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_LIFEDRAIN, minDamage = -9, maxDamage = -40, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -175, radius = 3, target = false, effect = CONST_ME_STONES},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 15,
	armor = 10,
	{name ="speed", interval = 10000, chance = 40, speed = {min = 0, max = 0}, duration = 10000, effect = CONST_ME_MAGIC_GREEN},
	{name ="combat", interval = 5000, chance = 60, type = COMBAT_HEALING, minDamage = 50, maxDamage = 80, effect = CONST_ME_MAGIC_BLUE}
}

monster.loot = {
}

mType:register(monster)
