local mType = Game.createMonsterType("Tyrant of The Depth")
local monster = {}

monster.name = "Tyrant of The Depth"
monster.description = "a tyrant of the depth"
monster.experience = 4000
monster.outfit = {
	lookType = 1035,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 6400
monster.maxHealth = 6400
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 30790
monster.speed = 120
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 10000,
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
	{text = "naps naps naps!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = -20},
	{type = COMBAT_EARTHDAMAGE, percent = -20},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400},
	{name ="Stalagmite", interval = 2000, chance = 15, minDamage = -190, maxDamage = -300, range = 7, length = 6, spread = 3, ShootEffect = CONST_ANI_POISON},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -70, maxDamage = -160, range = 3, length = 6, spread = 3, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -90, maxDamage = -160, range = 3, length = 6, spread = 3, effect = CONST_ME_ICEAREA},
	{name ="Stone Shower", interval = 2000, chance = 10, minDamage = -230, maxDamage = -450, range = 7}
}

monster.defenses = {
	defense = 5,
	armor = 10
}

monster.loot = {
	{name = "Small Enchanted Sapphire", chance = 11910},
	{name = "Small Enchanted Ruby", chance = 9040},
	{name = "Green Gem", chance = 2300},
	{name = "Blue Gem", chance = 3010},
	{name = "Crystal Mace", chance = 1580},
	{name = "Energy Vein", chance = 3010},
	{name = "Crystalline Armor", chance = 860},
	{name = "Violet Gem", chance = 750},
	{name = "Suspicious Device", chance = 1290}
}

mType:register(monster)
