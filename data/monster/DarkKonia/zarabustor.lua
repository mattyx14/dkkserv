local mType = Game.createMonsterType("zarabustor")
local monster = {}

monster.name = "Zarabustor"
monster.description = "a Zarabustor"
monster.experience = 6400
monster.outfit = {
	lookType = 130,
	lookHead = 0,
	lookBody = 96,
	lookLegs = 92,
	lookFeet = 96,
	lookAddons = 1,
	lookMount = 0
}

monster.health = 5100
monster.maxHealth = 5100
monster.runHealth = 800
monster.race = "blood"
monster.corpse = 6080
monster.speed = 220
monster.summonCost = 0
monster.maxSummons = 3

monster.changeTarget = {
	interval = 5000,
	chance = 30
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
	targetDistance = 4,
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
	{text = "Learn the secret of our magic! YOUR death!", yell = false},
	{text = "Even a rat is a better mage than you.", yell = false},
	{text = "We don't like intruders!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -60, maxDamage = -130},
	{name ="combat", interval = 1800, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -85, maxDamage = -255, range = 7, ShootEffect = CONST_ANI_FIRE},
	{name ="combat", interval = 2400, chance = 17, type = COMBAT_MANADRAIN, minDamage = -35, maxDamage = -75, range = 7},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 2000, chance = 45, type = COMBAT_FIREDAMAGE, minDamage = -50, maxDamage = -250, range = 7, radius = 3, target = true, ShootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_FIREAREA},
	{name ="firefield", interval = 1000, chance = 20, range = 7, radius = 2, target = true, ShootEffect = CONST_ANI_FIRE},
	{name ="combat", interval = 1800, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -135, maxDamage = -355, length = 8, spread = 0, effect = CONST_ME_BIGCLOUDS},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 30,
	armor = 25,
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 60, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE},
	{name ="invisible", interval = 7000, chance = 50, duration = 5000, effect = CONST_ME_MAGIC_RED}
}

monster.summons = {
	{name = "stone golem", chance = 10, interval = 2000, max = 1},
	{name = "warlock", chance = 10, interval = 2000, max = 1},
	{name = "green djinn", chance = 10, interval = 2000, max = 1}
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
