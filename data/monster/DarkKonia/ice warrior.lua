local mType = Game.createMonsterType("ice warrior")
local monster = {}

monster.name = "Ice Warrior"
monster.description = "an Ice Warrior"
monster.experience = 22180
monster.outfit = {
	lookType = 145,
	lookHead = 0,
	lookBody = 47,
	lookLegs = 105,
	lookFeet = 105,
	lookAddons = 1,
	lookMount = 0
}

monster.health = 23740
monster.maxHealth = 23740
monster.runHealth = 350
monster.race = "undead"
monster.corpse = 6080
monster.speed = 1100
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
}

monster.flags = {
	attackable = true,
	hostile = true,
	summonable = false,
	convinceable = false,
	illusionable = true,
	boss = false,
	pushable = false,
	canPushItems = false,
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
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -80, maxDamage = -350},
	{name ="combat", interval = 1900, chance = 45, type = COMBAT_ICEDAMAGE, minDamage = -150, maxDamage = -390, range = 8, radius = 4, target = true, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO},
	{name ="combat", interval = 1800, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -130, maxDamage = -355, range = 7, radius = 4, target = false, effect = CONST_ME_ICEATTACK}
}

monster.defenses = {
	defense = 20,
	armor = 30,
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_HEALING, minDamage = 100, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE}
}

monster.loot = {
}

mType:register(monster)
