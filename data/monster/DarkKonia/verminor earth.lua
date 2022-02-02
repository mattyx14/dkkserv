local mType = Game.createMonsterType("verminor earth")
local monster = {}

monster.name = "verminor"
monster.description = "the verminor"
monster.experience = 0
monster.outfit = {
	lookType = 12,
	lookHead = 19,
	lookBody = 83,
	lookLegs = 115,
	lookFeet = 96,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 185000
monster.maxHealth = 185000
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 6068
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
	{type = COMBAT_ENERGYDAMAGE, percent = 25},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -2100},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -455, maxDamage = -1010, range = 7, ShootEffect = CONST_ANI_POISON},
	{name ="combat", interval = 1800, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -250, maxDamage = -400, range = 3, radius = 5, target = false, effect = CONST_ME_BIGPLANTS},
	{name ="combat", interval = 2500, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -500, length = 8, spread = 0, effect = CONST_ME_CARNIPHILA},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -480, range = 7, radius = 5, target = false, effect = CONST_ME_CARNIPHILA},
	{name ="combat", interval = 2100, chance = 17, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -850, length = 4, spread = 3, effect = CONST_ME_YELLOW_RINGS},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_BIGPLANTS},
	{name ="combat", interval = 2300, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -200, range = 7, radius = 3, target = false, effect = CONST_ME_YELLOW_RINGS}
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{name ="combat", interval = 800, chance = 50, type = COMBAT_HEALING, minDamage = 1300, maxDamage = 2300, effect = CONST_ME_MAGIC_BLUE},
	{name ="speed", interval = 5000, chance = 80, speed = {min = 600, max = 600}, duration = 6000, effect = CONST_ME_MAGIC_RED}
}

monster.summons = {
	{name = "golem", chance = 17, interval = 2000, max = 1}
}

monster.loot = {
	{id = 2152, chance = 9000, maxCount = 2},
	{id = 2152, chance = 12000, maxCount = 4},
	{id = 7368, chance = 7000, maxCount = 15},
	{id = 2514, chance = 500},
	{id = 5906, chance = 1000, maxCount = 3},
	{id = 5954, chance = 1000, maxCount = 2},
	{id = 2164, chance = 3200},
	{id = 2176, chance = 3000},
	{id = 8473, chance = 15000, maxCount = 3},
	{id = 1982, chance = 1300},
	{id = 2165, chance = 2400},
	{id = 1987, chance = 100000}
}

mType:register(monster)
