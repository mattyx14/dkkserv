local mType = Game.createMonsterType("gorgimera fire")
local monster = {}

monster.name = "gorgimera"
monster.description = "a gorgimera"
monster.experience = 14350
monster.outfit = {
	lookType = 240,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 27500
monster.maxHealth = 27500
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 6332
monster.speed = 310
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
	staticAttackChance = 60,
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
	{text = "GROOOWL!", yell = false},
	{text = "GRRRRR!", yell = false}
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
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -1000},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -600, length = 4, spread = 2, effect = CONST_ME_FIREAREA},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -480, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK},
	{name ="combat", interval = 1000, chance = 19, type = COMBAT_FIREDAMAGE, minDamage = -250, maxDamage = -660, range = 7, radius = 4, target = false, effect = CONST_ME_EXPLOSIONAREA},
	{name ="combat", interval = 1000, chance = 23, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -400, range = 7, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA}
}

monster.defenses = {
	defense = 35,
	armor = 25
}

monster.loot = {
}

mType:register(monster)
