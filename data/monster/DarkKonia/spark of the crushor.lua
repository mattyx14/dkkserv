local mType = Game.createMonsterType("spark of the crushor")
local monster = {}

monster.name = "spark of the crushor"
monster.description = "a spark of the crushor"
monster.experience = 8750
monster.outfit = {
	lookType = 242,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 16000
monster.maxHealth = 16000
monster.runHealth = 400
monster.race = "fire"
monster.corpse = 8964
monster.speed = 320
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 25
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
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 25},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -5},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.attacks = {
	{name ="combat", interval = 2000, chance = 100, type = COMBAT_FIREDAMAGE, minDamage = -25, maxDamage = -990, range = 1, effect = CONST_ME_HITBYFIRE},
	{name ="combat", interval = 2500, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -1142, maxDamage = -1625, radius = 2, target = false, effect = CONST_ME_EXPLOSIONHIT},
	{name ="combat", interval = 4000, chance = 12, type = COMBAT_FIREDAMAGE, minDamage = -475, maxDamage = -996, length = 8, spread = 0, effect = CONST_ME_FIREAREA},
	{name ="combat", interval = 1000, chance = 9, type = COMBAT_FIREDAMAGE, minDamage = -342, maxDamage = -625, effect = CONST_ME_FIREATTACK},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_PHYSICALDAMAGE, minDamage = -514, maxDamage = -824, radius = 3, target = true, effect = CONST_ME_EXPLOSIONAREA},
	{name ="condition", interval = 1000, chance = 25, type = CONDITION_FIRE, startDamage = 0, tick = 9000, minDamage = -1000, maxDamage = -1200, range = 8},
	{name ="firefield", interval = 3500, chance = 21, radius = 4, target = true}
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{name ="combat", interval = 1000, chance = 7, type = COMBAT_HEALING, minDamage = 390, maxDamage = 550, effect = CONST_ME_HITBYFIRE},
	{name ="combat", interval = 1500, chance = 9, type = COMBAT_HEALING, minDamage = 490, maxDamage = 650, effect = CONST_ME_HITBYFIRE}
}

monster.loot = {
	{id = 2152, chance = 16000, maxCount = 80},
	{id = 2152, chance = 16000, maxCount = 99},
	{id = 7840, chance = 12000, maxCount = 16},
	{id = 1987, chance = 100000}
}

mType:register(monster)
