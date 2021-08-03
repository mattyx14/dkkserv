local mType = Game.createMonsterType("son of verminor earth")
local monster = {}

monster.name = "Son of verminor"
monster.description = "a Son of verminor"
monster.experience = 9060
monster.outfit = {
	lookType = 19,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 20250
monster.maxHealth = 20250
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 1496
monster.speed = 280
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
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -360},
	{name ="Paralyze", interval = 2300, chance = 17, range = 7, effect = CONST_ME_CARNIPHILA},
	{name ="combat", interval = 2200, chance = 17, type = COMBAT_EARTHDAMAGE, minDamage = -450, maxDamage = -750, range = 7, ShootEffect = CONST_ANI_EARTH},
	{name ="combat", interval = 1900, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -250, maxDamage = -400, range = 7, radius = 3, target = false, effect = CONST_ME_STONES}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="combat", interval = 1500, chance = 50, type = COMBAT_HEALING, minDamage = 205, maxDamage = 325, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "defiler", chance = 10, interval = 1000, max = 1}
}

monster.loot = {
}

mType:register(monster)
