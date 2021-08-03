local mType = Game.createMonsterType("executor")
local monster = {}

monster.name = "executor"
monster.description = "a executor"
monster.experience = 16500
monster.outfit = {
	lookType = 233,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 8200
monster.maxHealth = 8200
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 6316
monster.speed = 310
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
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
	{text = "Executor!", yell = false}
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -420, maxDamage = -1450},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -350, maxDamage = -700, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="combat", interval = 1000, chance = 50, type = COMBAT_HEALING, minDamage = 350, maxDamage = 700, effect = CONST_ME_MAGIC_BLUE},
	{name ="invisible", interval = 10000, chance = 50, duration = 2000, effect = CONST_ME_MAGIC_RED},
	{name ="speed", interval = 1000, chance = 12, speed = {min = 380, max = 380}, duration = 30000, effect = CONST_ME_MAGIC_RED}
}

monster.loot = {
}

mType:register(monster)
