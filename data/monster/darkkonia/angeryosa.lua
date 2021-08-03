local mType = Game.createMonsterType("angeryosa")
local monster = {}

monster.name = "Angeryosa"
monster.description = "Angeryosa"
monster.experience = 11500
monster.outfit = {
	lookType = 149,
	lookHead = 0,
	lookBody = 89,
	lookLegs = 100,
	lookFeet = 80,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 25000
monster.maxHealth = 25000
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 3065
monster.speed = 270
monster.summonCost = 0
monster.maxSummons = 4

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	staticAttackChance = 70,
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
	{text = "MUHAHA!", yell = false},
	{text = "Back in black!", yell = false},
	{text = "Die!", yell = false},
	{text = "Dieeee!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -625},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -260, maxDamage = -310, radius = 6, target = false, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -50, maxDamage = -210, length = 8, spread = 0, effect = CONST_ME_BLOCKHIT},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -300, length = 8, spread = 3, effect = CONST_ME_ENERGYAREA},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -800, length = 8, spread = 0, effect = CONST_ME_PURPLEENERGY},
	{name ="combat", interval = 3000, chance = 18, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -150, radius = 5, target = true, effect = CONST_ME_GROUNDSHAKER},
	{name ="fury skill reducer", interval = 2000, chance = 5}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="invisible", interval = 2000, chance = 10, duration = 8000, effect = CONST_ME_MAGIC_BLUE},
	{name ="combat", interval = 7000, chance = 20, type = COMBAT_HEALING, minDamage = 500, maxDamage = 700, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "Anger", chance = 10, interval = 2000}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 200},
	{id = 8844, chance = 100000, maxCount = 5},
	{id = 21400, chance = 45000},
	{id = 2152, chance = 85000, maxCount = 25},
	{id = 6558, chance = 35000, maxCount = 3},
	{id = 6500, chance = 22500},
	{id = 5911, chance = 4000},
	{id = 5944, chance = 21500},
	{id = 5944, chance = 50},
	{id = 2124, chance = 410},
	{id = 6301, chance = 60},
	{id = 2542, chance = 100}
}

mType:register(monster)
