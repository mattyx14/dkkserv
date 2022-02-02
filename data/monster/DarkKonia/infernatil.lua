local mType = Game.createMonsterType("infernatil")
local monster = {}

monster.name = "Infernatil"
monster.description = "a infernatil"
monster.experience = 0
monster.outfit = {
	lookType = 549,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 112000
monster.maxHealth = 112000
monster.runHealth = 2500
monster.race = "undead"
monster.corpse = 5995
monster.speed = 370
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
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 80},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 80},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 80},
	{type = COMBAT_HOLYDAMAGE , percent = 80},
	{type = COMBAT_DEATHDAMAGE , percent = 80}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 250, attack = 250},
	{name ="combat", interval = 1000, chance = 7, type = COMBAT_MANADRAIN, minDamage = -300, maxDamage = -600, range = 7},
	{name ="combat", interval = 1000, chance = 6, type = COMBAT_MANADRAIN, minDamage = -150, maxDamage = -350, radius = 5, target = false, effect = CONST_ME_HOLYDAMAGE},
	{name ="combat", interval = 1500, chance = 6, type = COMBAT_FIREDAMAGE, radius = 5, target = false, effect = CONST_ME_GROUNDSHAKER},
	{name ="combat", interval = 1000, chance = 70, type = COMBAT_ENERGYDAMAGE, minDamage = -2308, maxDamage = -3000, radius = 5, target = false, effect = CONST_ME_PURPLEENERGY},
	{name ="combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -710, maxDamage = -950, range = 7, radius = 5, target = true, ShootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE},
	{name ="firefield", interval = 1900, chance = 10, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_FIRE},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -800, maxDamage = -1000, range = 7, radius = 5, target = false, effect = CONST_ME_BIGCLOUDS}
}

monster.defenses = {
	defense = 45,
	armor = 40
}

monster.loot = {
}

mType:register(monster)
