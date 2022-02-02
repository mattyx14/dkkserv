local mType = Game.createMonsterType("erebus")
local monster = {}

monster.name = "erebus"
monster.description = "the erebus"
monster.experience = 14700
monster.outfit = {
	lookType = 300,
	lookHead = 20,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 13950
monster.maxHealth = 13950
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 6344
monster.speed = 320
monster.summonCost = 0
monster.maxSummons = 2

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
	{text = "Oh my, you forgot to put your pants on!", yell = false},
	{text = "Weeheeheeheehee!", yell = false},
	{text = "Its nothing but a dream!", yell = false},
	{text = "Give in!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -440, maxDamage = -790},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -350, maxDamage = -700, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 2000, chance = 50, type = COMBAT_EARTHDAMAGE, minDamage = -450, maxDamage = -450, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_STONES},
	{name ="combat", interval = 3000, chance = 25, type = COMBAT_MANADRAIN, minDamage = -400, maxDamage = -700, range = 7, effect = CONST_ME_MAGIC_RED},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 20,
	armor = 25,
	{name ="combat", interval = 1000, chance = 70, type = COMBAT_HEALING, minDamage = 475, maxDamage = 825, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "Phantasm summon", chance = 20, interval = 3000, max = 2}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2144, chance = 1000, maxCount = 3},
	{id = 2657, chance = 5000},
	{id = 2168, chance = 1333},
	{id = 2170, chance = 2000},
	{id = 1987, chance = 100000}
}

mType:register(monster)
