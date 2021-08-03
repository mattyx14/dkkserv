local mType = Game.createMonsterType("abaddon")
local monster = {}

monster.name = "abaddon"
monster.description = "the abaddon"
monster.experience = 0
monster.outfit = {
	lookType = 291,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 235900
monster.maxHealth = 235900
monster.runHealth = 220
monster.race = "undead"
monster.corpse = 8847
monster.speed = 340
monster.summonCost = 0
monster.maxSummons = 5

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
	{text = "ZCHHHHH", yell = true},
	{text = "I WILL SET THE WORLD IN FIRE!", yell = true},
	{text = "I WILL PROTECT MY BROOD!", yell = true}
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
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 135, attack = 185},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -920, maxDamage = -1880, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_PURPLEENERGY},
	{name ="energyfield", interval = 1000, chance = 25, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_ENERGY},
	{name ="combat", interval = 1000, chance = 17, type = COMBAT_ENERGYDAMAGE, minDamage = -950, maxDamage = -1850, length = 4, spread = 2, effect = CONST_ME_PURPLEENERGY}
}

monster.defenses = {
	defense = 35,
	armor = 22,
	{name ="combat", interval = 1000, chance = 35, type = COMBAT_HEALING, minDamage = 1900, maxDamage = 2050, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "wyrm", chance = 17, interval = 2000, max = 5}
}

monster.loot = {
}

mType:register(monster)
