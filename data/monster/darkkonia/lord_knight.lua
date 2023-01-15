local mType = Game.createMonsterType("Lord Knight")
local monster = {}

monster.description = "a lord knight"
monster.experience = 9250
monster.outfit = {
	lookType = 134,
	lookHead = 114,
	lookBody = 0,
	lookLegs = 114,
	lookFeet = 115,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 6800
monster.maxHealth = 6800
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 22017
monster.speed = 450
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "MINE!", yell = true},
	{text = "Yeahhh!", yell = false}
}

monster.loot = {
	{name = "platinum coin", chance = 85480, maxCount = 4},
	{name = "cyan crystal fragment", chance = 10805},
	{id = 281, chance = 8870}, -- giant shimmering pearl
	{id= 3039, chance = 6450},
	{name = "emerald bangle", chance = 5650},
	{name = "gemmed figurine", chance = 4840},
	{name = "green crystal fragment", chance = 3230},
	{name = "red crystal fragment", chance = 3230},
	{name = "violet crystal shard", chance = 2420},
	{name = "green gem", chance = 1610},
	{name = "onyx chip", chance = 1610, maxCount = 3}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -480},
	{name ="explosion wave", interval = 2000, chance = 15, minDamage = -280, maxDamage = -400, target = false},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_EARTHDAMAGE, minDamage = -350, maxDamage = -520, radius = 4, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_GREEN_RINGS, target = true}
}

monster.defenses = {
	defense = 82,
	armor = 82,
	{name ="speed", interval = 2000, chance = 8, speedChange = 250, effect = CONST_ME_MAGIC_GREEN, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
