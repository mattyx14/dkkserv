local mType = Game.createMonsterType("thorn minion")
local monster = {}

monster.name = "Thorn Minion"
monster.description = "a thorn minion"
monster.experience = 1600
monster.outfit = {
	lookType = 717,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 3500
monster.maxHealth = 3500
monster.runHealth = 15
monster.race = "venom"
monster.corpse = 0
monster.speed = 150
monster.summonCost = 290
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
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
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = -12},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 1},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -60, maxDamage = -150, condition = {type = CONDITION_POISON, startDamage = 500, interval = 4000}},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -195, range = 7, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS},
	{name ="speed", interval = 2000, chance = 15, speed = {min = -800, max = -800}, duration = 30000, range = 7, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_GREEN_RINGS},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -280, radius = 4, target = false, effect = CONST_ME_GROUNDSHAKER},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -400, length = 4, spread = 0, effect = CONST_ME_CARNIPHILA}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="speed", interval = 2000, chance = 30, speed = {min = 250, max = 250}, duration = 4000, effect = CONST_ME_MAGIC_GREEN}
}

monster.loot = {
}

mType:register(monster)
