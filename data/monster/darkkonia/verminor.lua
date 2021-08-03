local mType = Game.createMonsterType("verminor")
local monster = {}

monster.name = "Verminor"
monster.description = "a Verminor"
monster.experience = 335000
monster.outfit = {
	lookType = 527,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 485000
monster.maxHealth = 485000
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 14196
monster.speed = 300
monster.summonCost = 0
monster.maxSummons = 4

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
	staticAttackChance = 98,
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
	{text = "I AM VERMINOR, PLAGUELORD... AND YOU ARE LOST!", yell = true},
	{text = "MY SEED IS FEAR AND MY HARVEST ARE YOUR SOULS!", yell = true}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -3800},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -455, maxDamage = -1010, range = 7, ShootEffect = CONST_ANI_POISON},
	{name ="combat", interval = 1800, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -550, maxDamage = -700, range = 3, radius = 5, target = false, effect = CONST_ME_BIGPLANTS},
	{name ="combat", interval = 2500, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -500, length = 8, spread = 0, effect = CONST_ME_CARNIPHILA},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -500, maxDamage = -780, range = 7, radius = 5, target = false, effect = CONST_ME_CARNIPHILA},
	{name ="combat", interval = 2100, chance = 17, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -850, length = 4, spread = 3, effect = CONST_ME_YELLOW_RINGS},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_BIGPLANTS},
	{name ="combat", interval = 2300, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -500, maxDamage = -900, range = 7, radius = 3, target = false, effect = CONST_ME_YELLOW_RINGS}
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{name ="combat", interval = 800, chance = 50, type = COMBAT_HEALING, minDamage = 800, maxDamage = 1500, effect = CONST_ME_MAGIC_BLUE},
	{name ="speed", interval = 5000, chance = 80, speed = {min = 480, max = 480}, duration = 6000, effect = CONST_ME_MAGIC_RED}
}

monster.summons = {
	{name = "demonearth", chance = 100, interval = 50000},
	{name = "demonearth", chance = 100, interval = 50000},
	{name = "son of verminor", chance = 100, interval = 50000},
	{name = "son of verminor", chance = 100, interval = 50000}
}

monster.loot = {
}

mType:register(monster)
