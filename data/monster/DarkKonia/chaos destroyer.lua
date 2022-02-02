local mType = Game.createMonsterType("chaos destroyer")
local monster = {}

monster.name = "chaos destroyer"
monster.description = "a chaos destroyer"
monster.experience = 25000
monster.outfit = {
	lookType = 458,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 80200
monster.maxHealth = 80200
monster.runHealth = 2500
monster.race = "blood"
monster.corpse = 5995
monster.speed = 300
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
	{text = "PRAISED BE MY MASTERS, THE RUTHLESS SEVEN!", yell = true},
	{text = "YOU ARE DOOMED!", yell = true},
	{text = "ORSHABAAL IS BACK!", yell = true},
	{text = "Be prepared for the day my masters will come for you!", yell = false},
	{text = "SOULS FOR ORSHABAAL!", yell = true}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 80},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 80},
	{type = COMBAT_HOLYDAMAGE , percent = 80},
	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.attacks = {
	{name ="melee", interval = 1800, chance = 100, minDamage = -600, maxDamage = -2980},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_MANADRAIN, minDamage = -400, maxDamage = -800, range = 7},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -950, maxDamage = -3050, radius = 5, target = false, effect = CONST_ME_SMALLCLOUDS},
	{name ="effect", interval = 2100, chance = 6, minDamage = -400, maxDamage = -1800, radius = 5, target = false, effect = CONST_ME_HITAREA},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -810, maxDamage = -1000, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
	{name ="combat", interval = 1000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -410, maxDamage = -900, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
	{name ="firefield", interval = 1900, chance = 10, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_HOLY},
	{name ="combat", interval = 1500, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -900, maxDamage = -1550, length = 20, spread = 0, effect = CONST_ME_PURPLEENERGY}
}

monster.defenses = {
	defense = 45,
	armor = 40,
	{name ="combat", interval = 400, chance = 30, type = COMBAT_HEALING, minDamage = 450, maxDamage = 650, effect = CONST_ME_MAGIC_BLUE},
	{name ="combat", interval = 500, chance = 20, type = COMBAT_HEALING, minDamage = 1200, maxDamage = 1380, effect = CONST_ME_MAGIC_BLUE},
	{name ="speed", interval = 1000, chance = 80, speed = {min = 350, max = 350}, duration = 37000, effect = CONST_ME_MAGIC_RED}
}

monster.summons = {
	{name = "firelord", chance = 90, interval = 5000, max = 2}
}

monster.loot = {
}

mType:register(monster)
