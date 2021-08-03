local mType = Game.createMonsterType("roken skeleton")
local monster = {}

monster.name = "Roken Skeleton"
monster.description = "a roken skeleton"
monster.experience = 590
monster.outfit = {
	lookType = 37,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 400
monster.maxHealth = 400
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 5963
monster.speed = 230
monster.summonCost = 620
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.flags = {
	attackable = true,
	hostile = true,
	summonable = true,
	convinceable = true,
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
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -25},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 64, attack = 50},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -30, maxDamage = -50, range = 1}
}

monster.defenses = {
	defense = 25,
	armor = 25
}

monster.loot = {
	{id = 2050, chance = 49625},
	{id = 2152, chance = 18350, maxCount = 2},
	{id = 2513, chance = 975},
	{id = 10564, chance = 5125},
	{id = 2417, chance = 2875},
	{id = 2399, chance = 6175, maxCount = 3},
	{id = 1987, chance = 100000}
}

mType:register(monster)
