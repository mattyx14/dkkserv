local mType = Game.createMonsterType("incineron magna")
local monster = {}

monster.name = "incineron magna"
monster.description = "a incineron magna"
monster.experience = 25000
monster.outfit = {
	lookType = 532,
	lookHead = 0,
	lookBody = 132,
	lookLegs = 132,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 80200
monster.maxHealth = 80200
monster.runHealth = 2500
monster.race = "blood"
monster.corpse = 6080
monster.speed = 250
monster.summonCost = 0
monster.maxSummons = 2

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
	{text = "YOU ARE DOOMED!", yell = true},
	{text = "Be prepared for the day my masters will come for you!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -1980},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -550, maxDamage = -1850, radius = 5, target = false, effect = CONST_ME_SMALLCLOUDS},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -810, maxDamage = -1000, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
	{name ="firefield", interval = 1900, chance = 10, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_HOLY},
	{name ="combat", interval = 1500, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -800, maxDamage = -1350, length = 20, spread = 0, effect = CONST_ME_PURPLEENERGY}
}

monster.defenses = {
	defense = 45,
	armor = 40,
	{name ="combat", interval = 400, chance = 30, type = COMBAT_HEALING, minDamage = 450, maxDamage = 650, effect = CONST_ME_MAGIC_BLUE},
	{name ="speed", interval = 1000, chance = 80, speed = {min = 740, max = 740}, duration = 37000, effect = CONST_ME_MAGIC_RED}
}

monster.summons = {
	{name = "firelord", chance = 90, interval = 5000, max = 2}
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
