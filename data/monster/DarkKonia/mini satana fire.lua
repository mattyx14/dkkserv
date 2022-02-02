local mType = Game.createMonsterType("mini satana fire")
local monster = {}

monster.name = "Mini Satana"
monster.description = "a mini satana"
monster.experience = 18050
monster.outfit = {
	lookType = 237,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 29850
monster.maxHealth = 29850
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 6364
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
	{text = "Muahaha!", yell = false},
	{text = "He he he!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -550},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -550, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONAREA},
	{name ="combat", interval = 1000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -420, maxDamage = -580, length = 1, spread = 0, effect = CONST_ME_FIREATTACK},
	{name ="combat", interval = 1000, chance = 34, type = COMBAT_EARTHDAMAGE, minDamage = -290, maxDamage = -500, range = 7, radius = 2, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONAREA}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="combat", interval = 1000, chance = 50, type = COMBAT_HEALING, minDamage = 75, maxDamage = 125, effect = CONST_ME_MAGIC_BLUE},
	{name ="speed", interval = 1000, chance = 40, speed = {min = 500, max = 500}, duration = 40000, effect = CONST_ME_MAGIC_RED}
}

monster.loot = {
}

mType:register(monster)
