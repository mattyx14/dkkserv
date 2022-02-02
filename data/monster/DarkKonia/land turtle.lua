local mType = Game.createMonsterType("land turtle")
local monster = {}

monster.name = "land turtle"
monster.description = "a land turtle"
monster.experience = 3850
monster.outfit = {
	lookType = 197,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 3150
monster.maxHealth = 3150
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 6072
monster.speed = 250
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0
}

monster.flags = {
	attackable = true,
	hostile = true,
	summonable = false,
	convinceable = false,
	illusionable = false,
	boss = false,
	pushable = true,
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
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 5},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 5},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 5},
	{type = COMBAT_HOLYDAMAGE , percent = 5},
	{type = COMBAT_DEATHDAMAGE , percent = 5}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -240}
}

monster.defenses = {
	defense = 15,
	armor = 15
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 2148, chance = 15000, maxCount = 30},
	{id = 5899, chance = 15000},
	{id = 5678, chance = 14000, maxCount = 3},
	{id = 6131, chance = 909},
	{id = 2671, chance = 20000, maxCount = 2},
	{id = 2417, chance = 6666},
	{id = 2510, chance = 10000}
}

mType:register(monster)
