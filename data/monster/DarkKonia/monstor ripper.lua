local mType = Game.createMonsterType("monstor ripper")
local monster = {}

monster.name = "monstor ripper"
monster.description = "the monstor ripper"
monster.experience = 39800
monster.outfit = {
	lookType = 244,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 30000
monster.maxHealth = 30000
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 6336
monster.speed = 390
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 60000,
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
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
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
	{name ="melee", interval = 2000, chance = 100, skill = 150, attack = 150},
	{name ="combat", interval = 2000, chance = 24, type = COMBAT_PHYSICALDAMAGE, minDamage = -280, maxDamage = -500, range = 7, ShootEffect = CONST_ANI_LARGEROCK}
}

monster.defenses = {
	defense = 15,
	armor = 15,
	{name ="speed", interval = 2000, chance = 12, speed = {min = 380, max = 380}, duration = 4000, effect = CONST_ME_MAGIC_RED}
}

monster.loot = {
	{id = 6540, chance = 100000},
	{id = 13534, chance = 1000},
	{id = 13533, chance = 1000}
}

mType:register(monster)
