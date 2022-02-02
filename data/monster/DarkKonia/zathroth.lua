local mType = Game.createMonsterType("zathroth")
local monster = {}

monster.name = "Zathroth"
monster.description = "a Zathroth"
monster.experience = 14050000
monster.outfit = {
	lookType = 12,
	lookHead = 114,
	lookBody = 95,
	lookLegs = 94,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 915000
monster.maxHealth = 915000
monster.runHealth = 2500
monster.race = "blood"
monster.corpse = 6068
monster.speed = 270
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
	{text = "NOONE WILL STOP ME THIS TIME!", yell = true},
	{text = "THE POWER IS MINE!", yell = true},
	{text = "I returned from death and you dream about defeating me?", yell = false},
	{text = "Witness the first seconds of my eternal world domination!", yell = false},
	{text = "The powers of darkness are with me!", yell = false},
	{text = "Even in my weakened state I will crush you all!", yell = false},
	{text = "I came, I see, I will win!", yell = false}
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
	{name ="melee", interval = 2000, chance = 100, skill = 400, attack = 400, condition = {type = CONDITION_POISON, startDamage = 400, interval = 4000}},
	{name ="combat", interval = 2500, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -5000, maxDamage = -8500, radius = 9, target = true, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 1000, chance = 9, type = COMBAT_EARTHDAMAGE, minDamage = -4350, maxDamage = -8550, radius = 9, target = false, effect = CONST_ME_POISONAREA},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -4200, maxDamage = -8400, radius = 9, target = false, effect = CONST_ME_ENERGYHIT},
	{name ="combat", interval = 1000, chance = 8, type = COMBAT_MANADRAIN, minDamage = -4325, maxDamage = -8375, radius = 9, target = false, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -2000, maxDamage = -6000, radius = 9, target = false, effect = CONST_ME_POFF},
	{name ="strength", interval = 1000, chance = 6, minDamage = -1305, maxDamage = -3375, radius = 5, target = false, effect = CONST_ME_HITAREA},
	{name ="condition", interval = 1000, chance = 15, type = CONDITION_FIRE, startDamage = 0, tick = 9000, minDamage = -2050, maxDamage = -4000, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
	{name ="combat", interval = 1000, chance = 9, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -250, length = 8, spread = 0, effect = CONST_ME_HITBYPOISON}
}

monster.defenses = {
	defense = 110,
	armor = 90,
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 600, maxDamage = 800, effect = CONST_ME_MAGIC_GREEN},
	{name ="combat", interval = 1300, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1900, effect = CONST_ME_MAGIC_GREEN},
	{name ="speed", interval = 1000, chance = 4, speed = {min = 540, max = 540}, duration = 7000, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "orshabaal", chance = 12, interval = 1000, max = 2}
}

monster.loot = {
}

mType:register(monster)
