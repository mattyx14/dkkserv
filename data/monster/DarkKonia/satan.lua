local mType = Game.createMonsterType("satan")
local monster = {}

monster.name = "Satan"
monster.description = ""
monster.experience = 14099595
monster.outfit = {
	lookType = 862,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 94,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 2433800
monster.maxHealth = 2433800
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 6068
monster.speed = 300
monster.summonCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 5000,
	chance = 20
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
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 10},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = 10},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.attacks = {
	{name ="combat", interval = 1000, chance = 100, type = COMBAT_DROWNDAMAGE, minDamage = -860, maxDamage = -8500},
	{name ="melee", interval = 1500, chance = 100, minDamage = -2060, maxDamage = -10880},
	{name ="Paralyze", interval = 1000, chance = 50, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_DROWNDAMAGE, minDamage = -700, maxDamage = -4200, range = 7, radius = 10, target = true, ShootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -1710, maxDamage = -3050, range = 15, radius = 10, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -1750, maxDamage = -2850, range = 12, length = 9, spread = 7, ShootEffect = CONST_ANI_HOLY, effect = CONST_ME_FIREATTACK},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -1750, maxDamage = -2850, range = 15, length = 9, spread = 7, ShootEffect = CONST_ANI_HOLY, effect = CONST_ME_SMALLPLANTS}
}

monster.defenses = {
	defense = 145,
	armor = 188,
	{name ="combat", interval = 1000, chance = 40, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 2000, effect = CONST_ME_MAGIC_BLUE},
	{name ="combat", interval = 2000, chance = 4, type = COMBAT_HEALING, minDamage = 10300, maxDamage = 30700, effect = CONST_ME_MAGIC_BLUE},
	{name ="speed", interval = 2000, chance = 30, speed = {min = 3500, max = 3500}, duration = 18000, effect = CONST_ME_MAGIC_RED}
}

monster.summons = {
	{name = "Mini Satana fire", chance = 20, interval = 2500, max = 2}
}

monster.loot = {
	{id = 2160, chance = 50000, maxCount = 75},
	{id = 13831, chance = 21429},
	{id = 13876, chance = 12000},
	{id = 13862, chance = 9000}
}

mType:register(monster)
