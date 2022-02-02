local mType = Game.createMonsterType("toxirus")
local monster = {}

monster.name = "Toxirus"
monster.description = "a toxirus"
monster.experience = 9900
monster.outfit = {
	lookType = 12,
	lookHead = 19,
	lookBody = 83,
	lookLegs = 115,
	lookFeet = 96,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 9200
monster.maxHealth = 9200
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 0
monster.speed = 390
monster.summonCost = 10000
monster.maxSummons = 4

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.flags = {
	attackable = true,
	hostile = true,
	summonable = true,
	convinceable = true,
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
	{type = COMBAT_PHYSICALDAMAGE, percent = 95},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 95},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 95},
	{type = COMBAT_HOLYDAMAGE , percent = 95},
	{type = COMBAT_DEATHDAMAGE , percent = 95}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -120, maxDamage = -750},
	{name ="combat", interval = 1000, chance = 14, type = COMBAT_EARTHDAMAGE, minDamage = -190, maxDamage = -400, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_STONES},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS},
	{name ="combat", interval = 1500, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -190, maxDamage = -400, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_BIGPLANTS},
	{name ="combat", interval = 1500, chance = 40, type = COMBAT_EARTHDAMAGE, minDamage = -250, maxDamage = -420, length = 8, spread = 0, effect = CONST_ME_CARNIPHILA}
}

monster.defenses = {
	defense = 55,
	armor = 50,
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 90, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "behemoth", chance = 20, interval = 2000},
	{name = "stonecraker", chance = 15, interval = 2000},
	{name = "giant spider", chance = 10, interval = 2000},
	{name = "cyclops smith", chance = 2, interval = 2000}
}

monster.loot = {
}

mType:register(monster)
