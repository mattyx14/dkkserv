local mType = Game.createMonsterType("catrastrophe death")
local monster = {}

monster.name = "catrastrophe"
monster.description = "a catrastrophe"
monster.experience = 6280
monster.outfit = {
	lookType = 256,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 4100
monster.maxHealth = 4100
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 7256
monster.speed = 270
monster.summonCost = 0
monster.maxSummons = 6

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
	{text = "Let me take a look at you!", yell = false},
	{text = "Inferior creatures, bow before my power!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
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
	{name ="melee", interval = 2000, chance = 100, skill = 95, attack = 96},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -245, maxDamage = -375, range = 7, ShootEffect = CONST_ANI_ENERGY},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -260, maxDamage = -380, range = 7, ShootEffect = CONST_ANI_FIRE},
	{name ="combat", interval = 1000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -270, maxDamage = -490, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -330, maxDamage = -370, range = 7, ShootEffect = CONST_ANI_POISON},
	{name ="combat", interval = 1000, chance = 30, type = COMBAT_LIFEDRAIN, minDamage = -275, maxDamage = -285, range = 7, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -275, maxDamage = -485, range = 7, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 1000, chance = 40, type = COMBAT_MANADRAIN, minDamage = -320, maxDamage = -440, range = 7, effect = CONST_ME_MAGIC_RED},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 26,
	armor = 13
}

monster.summons = {
	{name = "elder beholder", chance = 13, interval = 1000, max = 1},
	{name = "roken skeleton", chance = 12, interval = 1000, max = 5}
}

monster.loot = {
}

mType:register(monster)
