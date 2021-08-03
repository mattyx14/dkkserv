local mType = Game.createMonsterType("earth magician")
local monster = {}

monster.name = "earth magician"
monster.description = "a earth magician"
monster.experience = 5500
monster.outfit = {
	lookType = 130,
	lookHead = 119,
	lookBody = 120,
	lookLegs = 120,
	lookFeet = 121,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 4200
monster.maxHealth = 4200
monster.runHealth = 800
monster.race = "blood"
monster.corpse = 6080
monster.speed = 220
monster.summonCost = 0
monster.maxSummons = 1

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
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -60, maxDamage = -180},
	{name ="combat", interval = 1800, chance = 35, type = COMBAT_EARTHDAMAGE, minDamage = -85, maxDamage = -185, range = 7, ShootEffect = CONST_ANI_EARTH},
	{name ="combat", interval = 2400, chance = 17, type = COMBAT_MANADRAIN, minDamage = -35, maxDamage = -75, range = 7},
	{name ="combat", interval = 2000, chance = 45, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -220, range = 7, radius = 3, target = true, ShootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_FIREAREA},
	{name ="firefield", interval = 1000, chance = 20, range = 7, radius = 2, target = true, ShootEffect = CONST_ANI_FIRE},
	{name ="combat", interval = 1800, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -165, maxDamage = -245, length = 8, spread = 0, effect = CONST_ME_PLANTATTACK},
	{name ="Paralyze", interval = 2000, chance = 17, range = 7, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 30,
	armor = 25,
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 60, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE},
	{name ="invisible", interval = 7000, chance = 50, duration = 500, effect = CONST_ME_MAGIC_RED}
}

monster.summons = {
	{name = "earth elemental", chance = 10, interval = 2000, max = 1}
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 3},
	{id = 5891, chance = 3000},
	{id = 2185, chance = 833},
	{id = 1986, chance = 400},
	{id = 2600, chance = 10000},
	{id = 2124, chance = 1000},
	{id = 2689, chance = 11000},
	{id = 2167, chance = 3000},
	{id = 5958, chance = 3000},
	{id = 2197, chance = 500},
	{id = 7368, chance = 7000, maxCount = 30},
	{id = 2151, chance = 1100, maxCount = 2},
	{id = 1987, chance = 100000}
}

mType:register(monster)
