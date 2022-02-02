local mType = Game.createMonsterType("hellfire")
local monster = {}

monster.name = "hellfire"
monster.description = "a hellfire"
monster.experience = 16200
monster.outfit = {
	lookType = 243,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 16800
monster.maxHealth = 16800
monster.runHealth = 0
monster.race = "fire"
monster.corpse = 6324
monster.speed = 260
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -30, maxDamage = -420},
	{name ="firefield", interval = 1000, chance = 10, range = 7, radius = 4, target = false, ShootEffect = CONST_ANI_FIRE},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -1700, maxDamage = -2415, range = 5, length = 4, spread = 2, effect = CONST_ME_FIREATTACK},
	{name ="combat", interval = 1000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -750, range = 7, radius = 3, target = false, effect = CONST_ME_EXPLOSIONAREA}
}

monster.defenses = {
	defense = 25,
	armor = 25
}

monster.loot = {
}

mType:register(monster)
