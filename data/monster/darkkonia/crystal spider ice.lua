local mType = Game.createMonsterType("crystal spider ice")
local monster = {}

monster.name = "Crystal Spider"
monster.description = "a crystal spider"
monster.experience = 18899
monster.outfit = {
	lookType = 263,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 11250
monster.maxHealth = 11250
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 7344
monster.speed = 340
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
	{text = "Screeech!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -440},
	{name ="Paralyze", interval = 2000, chance = 17, range = 7, effect = CONST_ME_ICEAREA},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -160, maxDamage = -350, range = 7, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO}
}

monster.defenses = {
	defense = 20,
	armor = 25,
	{name ="speed", interval = 3000, chance = 40, speed = {min = 380, max = 380}, duration = 80000, effect = CONST_ME_MAGIC_RED}
}

monster.loot = {
}

mType:register(monster)
