local mType = Game.createMonsterType("lithermoth")
local monster = {}

monster.name = "lithermoth"
monster.description = "a lithermoth"
monster.experience = 9000
monster.outfit = {
	lookType = 55,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 100000
monster.maxHealth = 100000
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 5999
monster.speed = 290
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
	{text = "You're so little!", yell = false},
	{text = "Human flesh - delicious!", yell = false},
	{text = "Crush the intruders!", yell = true}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -730},
	{name ="combat", interval = 1500, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -180, maxDamage = -495, range = 7, ShootEffect = CONST_ANI_LARGEROCK},
	{name ="combat", interval = 1000, chance = 14, type = COMBAT_EARTHDAMAGE, minDamage = -190, maxDamage = -460, range = 7, radius = 3, target = true, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_STONES},
	{name ="combat", interval = 1500, chance = 14, type = COMBAT_EARTHDAMAGE, minDamage = -190, maxDamage = -460, radius = 2, target = false, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_STONES}
}

monster.defenses = {
	defense = 45,
	armor = 40,
	{name ="speed", interval = 1000, chance = 7, speed = {min = 350, max = 350}, duration = 4000, effect = CONST_ME_MAGIC_RED}
}

monster.loot = {
	{id = 2152, chance = 100000, maxCount = 2},
	{id = 2671, chance = 10000, maxCount = 3},
	{id = 2023, chance = 11000},
	{id = 2174, chance = 800},
	{id = 2387, chance = 2000},
	{id = 5892, chance = 1500},
	{id = 2377, chance = 4000},
	{id = 2231, chance = 7000},
	{id = 5930, chance = 400},
	{id = 2393, chance = 1088},
	{id = 2150, chance = 4000, maxCount = 2},
	{id = 7385, chance = 2500},
	{id = 1987, chance = 100000}
}

mType:register(monster)
