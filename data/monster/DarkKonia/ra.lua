local mType = Game.createMonsterType("ra")
local monster = {}

monster.name = "Ra"
monster.description = ""
monster.experience = 14099595
monster.outfit = {
	lookType = 12,
	lookHead = 0,
	lookBody = 123,
	lookLegs = 97,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 1880200
monster.maxHealth = 1880200
monster.runHealth = 4000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 370
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
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 280, attack = 300},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_MANADRAIN, minDamage = -950, maxDamage = -1850, radius = 5, target = false, effect = CONST_ME_SMALLCLOUDS},
	{name ="combat", interval = 1000, chance = 5, type = COMBAT_DROWNDAMAGE, minDamage = -1160, maxDamage = -1300, range = 7},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -150, maxDamage = -350, radius = 5, target = false, effect = CONST_ME_SMALLCLOUDS},
	{name ="effect", interval = 1000, chance = 6, radius = 6, target = false, effect = CONST_ME_GROUNDSHAKER},
	{name ="combat", interval = 1000, chance = 34, type = COMBAT_DEATHDAMAGE, minDamage = -1710, maxDamage = -2950, range = 7, radius = 7, target = true, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -1399, maxDamage = -1450, length = 8, spread = 0, effect = CONST_ME_BIGCLOUDS},
	{name ="speed", interval = 1000, chance = 20, speed = {min = -700, max = -700}, duration = 50000, range = 10, radius = 3, target = true, effect = CONST_ME_FIREATTACK}
}

monster.defenses = {
	defense = 45,
	armor = 40,
	{name ="combat", interval = 500, chance = 20, type = COMBAT_HEALING, minDamage = 700, maxDamage = 1010, effect = CONST_ME_MAGIC_BLUE},
	{name ="combat", interval = 1000, chance = 5, type = COMBAT_HEALING, minDamage = 7200, maxDamage = 10900, effect = CONST_ME_MAGIC_BLUE},
	{name ="speed", interval = 600, chance = 50, speed = {min = 630, max = 630}, duration = 7000, effect = CONST_ME_MAGIC_RED},
	{name ="invisible", interval = 1000, chance = 10, duration = 7000, effect = CONST_ME_TELEPORT}
}

monster.summons = {
	{name = "Demon Fire", chance = 100, interval = 50000}
}

monster.loot = {
}

mType:register(monster)
