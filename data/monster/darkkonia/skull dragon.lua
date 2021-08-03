local mType = Game.createMonsterType("skull dragon")
local monster = {}

monster.name = "skull dragon"
monster.description = "a skull dragon"
monster.experience = 12000
monster.outfit = {
	lookType = 231,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 10050
monster.maxHealth = 10050
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 6306
monster.speed = 300
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
	{text = "FEEEED MY ETERNAL HUNGER!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
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
	{name ="melee", interval = 2000, chance = 100, skill = 95, attack = 95},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -300, maxDamage = -395, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONAREA},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = 0, maxDamage = -500, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -120, maxDamage = -390, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_STONES},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -50, maxDamage = -180, range = 7, ShootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -600, length = 4, spread = 2, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -685, length = 4, spread = 2, effect = CONST_ME_GROUNDSHAKER},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -600, length = 4, spread = 2, effect = CONST_ME_HOLYDAMAGE},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -600, length = 4, spread = 2, effect = CONST_ME_SMALLCLOUDS}
}

monster.defenses = {
	defense = 35,
	armor = 5
}

monster.loot = {
}

mType:register(monster)
