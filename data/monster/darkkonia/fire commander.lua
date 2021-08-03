local mType = Game.createMonsterType("fire commander")
local monster = {}

monster.name = "Pyramo"
monster.description = "a Pyramo"
monster.experience = 10500
monster.outfit = {
	lookType = 134,
	lookHead = 0,
	lookBody = 132,
	lookLegs = 132,
	lookFeet = 114,
	lookAddons = 2,
	lookMount = 0
}

monster.health = 9900
monster.maxHealth = 9900
monster.runHealth = 0
monster.race = "fire"
monster.corpse = 6080
monster.speed = 360
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
	{text = "Terror!", yell = false},
	{text = "Yeahhh!", yell = false}
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -180, maxDamage = -790},
	{name ="combat", interval = 1500, chance = 45, type = COMBAT_FIREDAMAGE, minDamage = -250, maxDamage = -420, range = 8, radius = 2, target = true, ShootEffect = CONST_ANI_FLAMMINGARROW, effect = CONST_ME_FIREATTACK},
	{name ="combat", interval = 2400, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -230, maxDamage = -355, range = 7, radius = 3, target = false, effect = CONST_ME_FIREAREA},
	{name ="combat", interval = 1900, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -230, maxDamage = -355, range = 7, radius = 3, target = false, effect = CONST_ME_STONES}
}

monster.defenses = {
	defense = 20,
	armor = 30,
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_HEALING, minDamage = 100, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE}
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
