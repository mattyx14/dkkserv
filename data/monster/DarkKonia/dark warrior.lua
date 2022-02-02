local mType = Game.createMonsterType("dark warrior")
local monster = {}

monster.name = "dark magician"
monster.description = "a dark magician"
monster.experience = 15185
monster.outfit = {
	lookType = 133,
	lookHead = 116,
	lookBody = 95,
	lookLegs = 50,
	lookFeet = 132,
	lookAddons = 2,
	lookMount = 0
}

monster.health = 10325
monster.maxHealth = 10325
monster.runHealth = 800
monster.race = "blood"
monster.corpse = 6080
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
	{text = "Feel the power of my runes!", yell = false},
	{text = "Killing you is getting expensive!", yell = false},
	{text = "My secrets are mine alone!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 55},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 35},
	{type = COMBAT_HOLYDAMAGE , percent = 35},
	{type = COMBAT_DEATHDAMAGE , percent = 35}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -260, maxDamage = -680},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -315, maxDamage = -385, range = 7, ShootEffect = CONST_ANI_ENERGY},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -265, maxDamage = -445, range = 7, radius = 4, target = false, effect = CONST_ME_ENERGYAREA},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -265, maxDamage = -445, range = 7, radius = 2, target = false, effect = CONST_ME_ENERGYAREA}
}

monster.defenses = {
	defense = 20,
	armor = 15,
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 60, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE}
}

monster.loot = {
}

mType:register(monster)
