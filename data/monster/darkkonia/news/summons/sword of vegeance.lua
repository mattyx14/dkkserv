local mType = Game.createMonsterType("sword of vegeance")
local monster = {}

monster.name = "Sword of Vengeance"
monster.description = "a sword of vegeance"
monster.experience = 0
monster.outfit = {
	lookTypeEx = 26895
}

monster.health = 2000
monster.maxHealth = 2000
monster.runHealth = 0
monster.race = "fire"
monster.corpse = 0
monster.speed = 360
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
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 50, attack = 50},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -40, maxDamage = -160, radius = 6, target = false, effect = CONST_ME_MAGIC_BLUE},
	{name ="berserk", interval = 2000, chance = 15, minDamage = -40, maxDamage = -160},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -40, maxDamage = -100, length = 4, spread = 0, effect = CONST_ME_ENERGYHIT}
}

monster.defenses = {
	defense = 30,
	armor = 30
}

monster.loot = {
}

mType:register(monster)
