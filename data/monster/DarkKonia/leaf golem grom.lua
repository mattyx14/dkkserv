local mType = Game.createMonsterType("leaf golem grom")
local monster = {}

monster.name = "Leaf Golem Grom"
monster.description = "a leaf golem grom"
monster.experience = 10045
monster.outfit = {
	lookType = 573,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 13800
monster.maxHealth = 13800
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 0
monster.speed = 250
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	{text = "*crackle*", yell = false},
	{text = "*swwwwishhhh*", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.attacks = {
	{name ="melee", interval = 1500, chance = 100, skill = 100, attack = 45, condition = {type = CONDITION_POISON, startDamage = 300, interval = 4000}},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -50, range = 7, radius = 1, target = true, ShootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_EXPLOSIONHIT},
	{name ="condition", interval = 2000, chance = 15, type = CONDITION_POISON, startDamage = 0, tick = 4000, minDamage = -150, maxDamage = -200, radius = 4, target = false, effect = CONST_ME_GREEN_RINGS},
	{name ="speed", interval = 2000, chance = 20, speed = {min = -600, max = -600}, duration = 15000, radius = 3, target = false, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 15,
	armor = 15
}

monster.loot = {
}

mType:register(monster)
