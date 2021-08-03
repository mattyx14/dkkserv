local mType = Game.createMonsterType("yakchal")
local monster = {}

monster.name = "Yakchal"
monster.description = "an Yakchal"
monster.experience = 34580
monster.outfit = {
	lookType = 149,
	lookHead = 0,
	lookBody = 47,
	lookLegs = 105,
	lookFeet = 105,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 40000
monster.maxHealth = 40000
monster.runHealth = 800
monster.race = "undead"
monster.corpse = 6081
monster.speed = 300
monster.summonCost = 0
monster.maxSummons = 4

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
	{text = "So you think you are cool?", yell = false},
	{text = "I hope it is not too cold for you! HeHeHe.", yell = false},
	{text = "Freeze!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -730},
	{name ="combat", interval = 1000, chance = 6, type = COMBAT_ICEDAMAGE, radius = 5, target = false, effect = CONST_ME_POFF},
	{name ="combat", interval = 1000, chance = 34, type = COMBAT_ICEDAMAGE, minDamage = -310, maxDamage = -400, range = 7, radius = 4, target = false, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ICEAREA},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -500, maxDamage = -850, length = 8, spread = 0, effect = CONST_ME_ICEAREA}
}

monster.defenses = {
	defense = 45,
	armor = 40,
	{name ="combat", interval = 400, chance = 9, type = COMBAT_HEALING, minDamage = 750, maxDamage = 950, effect = CONST_ME_MAGIC_BLUE},
	{name ="speed", interval = 2000, chance = 5, speed = {min = 600, max = 600}, duration = 7000, effect = CONST_ME_MAGIC_RED}
}

monster.summons = {
	{name = "frost dragon", chance = 10, interval = 1000, max = 3},
	{name = "demonfrost", chance = 10, interval = 2000, max = 1}
}

monster.loot = {
}

mType:register(monster)
