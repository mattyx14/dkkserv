local mType = Game.createMonsterType("hidon")
local monster = {}

monster.name = "hidon"
monster.description = "a hidon"
monster.experience = 12000
monster.outfit = {
	lookType = 232,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 10000
monster.maxHealth = 10000
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 6310
monster.speed = 250
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
	{text = "Forgive Meeeee!", yell = false},
	{text = "Mouuuurn meeee!", yell = false}
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
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -940},
	{name ="combat", interval = 1800, chance = 55, type = COMBAT_LIFEDRAIN, minDamage = -350, maxDamage = -550, range = 7, radius = 4, target = false, ShootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 1800, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -220, range = 7, radius = 4, target = false, effect = CONST_ME_SMALLCLOUDS},
	{name ="Paralyze", interval = 2300, chance = 17, range = 7, effect = CONST_ME_STONES},
	{name ="combat", interval = 1900, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -50, maxDamage = -420, range = 7, radius = 4, target = false, effect = CONST_ME_MORTAREA}
}

monster.defenses = {
	defense = 35,
	armor = 25,
	{name ="speed", interval = 1000, chance = 35, speed = {min = 300, max = 300}, duration = 30000, effect = CONST_ME_MAGIC_RED}
}

monster.loot = {
}

mType:register(monster)
