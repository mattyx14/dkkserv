local mType = Game.createMonsterType("kaiser dragon")
local monster = {}

monster.name = "kaiser dragon"
monster.description = "the kaiser dragon"
monster.experience = 0
monster.outfit = {
	lookType = 231,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 255000
monster.maxHealth = 255000
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 6307
monster.speed = 410
monster.summonCost = 0
monster.maxSummons = 1

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
	{text = "FEEEED MY ETERNAL HUNGER!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 35},
	{type = COMBAT_EARTHDAMAGE, percent = 35},
	{type = COMBAT_FIREDAMAGE, percent = 35},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 35},
	{type = COMBAT_HOLYDAMAGE , percent = 35},
	{type = COMBAT_DEATHDAMAGE , percent = 35}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -1880},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -1000, maxDamage = -1395, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -900, maxDamage = -1200, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 1000, chance = 17, type = COMBAT_FIREDAMAGE, minDamage = -420, maxDamage = -790, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_EXPLOSIONAREA},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -950, maxDamage = -1480, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -680, maxDamage = -700, length = 4, spread = 2, effect = CONST_ME_EXPLOSIONAREA},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -700, maxDamage = -885, length = 4, spread = 2, effect = CONST_ME_EXPLOSIONAREA},
	{name ="combat", interval = 1000, chance = 17, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -700, length = 4, spread = 2, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_MORTAREA},
	{name ="condition", interval = 1000, chance = 20, type = CONDITION_DROWN, startDamage = 0, tick = 5000, length = 4, spread = 2, effect = CONST_ME_MORTAREA}
}

monster.defenses = {
	defense = 35,
	armor = 22,
	{name ="combat", interval = 1000, chance = 50, type = COMBAT_HEALING, minDamage = 1900, maxDamage = 2050, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "Morgaroth", chance = 17, interval = 2000, max = 1}
}

monster.loot = {
	{id = 2152, chance = 9000, maxCount = 2},
	{id = 2152, chance = 12000, maxCount = 4},
	{id = 7368, chance = 7000, maxCount = 15},
	{id = 2514, chance = 500},
	{id = 5906, chance = 1000, maxCount = 3},
	{id = 5954, chance = 1000, maxCount = 2},
	{id = 2164, chance = 3200},
	{id = 2176, chance = 3000},
	{id = 8473, chance = 15000, maxCount = 3},
	{id = 1982, chance = 1300},
	{id = 2165, chance = 2400},
	{id = 1987, chance = 100000}
}

mType:register(monster)
