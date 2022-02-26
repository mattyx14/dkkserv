local mType = Game.createMonsterType("Black Warlock")
local monster = {}

monster.description = "a black warlock"
monster.experience = 7500
monster.outfit = {
	lookType = 130,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 1,
	lookMount = 0
}

monster.health = 8400
monster.maxHealth = 8400
monster.runHealth = 800
monster.race = "blood"
monster.corpse = 18246
monster.speed = 350
monster.summonCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
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
	targetDistance = 4,
	runHealth = 900,
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
	{text = "We don't like intruders!", yell = false}
}

monster.loot = {
	{name = "red tome", chance = 300},
	{name = "candlestick", chance = 1500},
	{name = "piggy bank", chance = 60},
	{name = "ring of the sky", chance = 430},
	{id = 3007, chance = 700},
	{name = "small sapphire", chance = 1190},
	{name = "gold coin", chance = 29340, maxCount = 80},
	{name = "talon", chance = 1150},
	{id = 3051, chance = 2200}, -- Energy ring
	{name = "mind stone", chance = 2000},
	{name = "stone skin amulet", chance = 330},
	{name = "poison dagger", chance = 7600},
	{name = "skull staff", chance = 6370},
	{name = "golden armor", chance = 240},
	{id = 3509, chance = 1000},
	{name = "blue robe", chance = 1410},
	{name = "cherry", chance = 19000, maxCount = 4},
	{name = "bread", chance = 9000},
	{name = "dark mushroom", chance = 3000},
	{name = "assassin star", chance = 3500, maxCount = 4},
	{name = "assassin star", chance = 3470, maxCount = 4},
	{name = "great mana potion", chance = 4760},
	{name = "great health potion", chance = 5190},
	{name = "lightning robe", chance = 1000},
	{name = "luminous orb", chance = 510}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -90, maxDamage = -180, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
	{name ="warlock skill reducer", interval = 2000, chance = 5, range = 5, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -120, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -50, maxDamage = -180, range = 7, radius = 3, shootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_FIREAREA, target = true},
	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 2, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -150, maxDamage = -230, length = 8, spread = 3, effect = CONST_ME_BIGCLOUDS, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = -600, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 20000}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 100, maxDamage = 225, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="invisible", interval = 2000, chance = 20, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -5},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 95},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
