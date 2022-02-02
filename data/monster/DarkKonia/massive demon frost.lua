local mType = Game.createMonsterType("massive demon frost")
local monster = {}

monster.name = "Massive Demon Frost"
monster.description = "a Massive Demon Frost"
monster.experience = 11000
monster.outfit = {
	lookType = 12,
	lookHead = 0,
	lookBody = 85,
	lookLegs = 126,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 38200
monster.maxHealth = 38200
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 6068
monster.speed = 430
monster.summonCost = 10000
monster.maxSummons = 1

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.flags = {
	attackable = true,
	hostile = true,
	summonable = true,
	convinceable = true,
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
	{text = "MUHAHAHAHA!", yell = true},
	{text = "I SMELL FEEEEEAAAR!", yell = true},
	{text = "CHAMEK ATH UTHUL ARAK!", yell = true},
	{text = "Your resistance is futile!", yell = false},
	{text = "Your soul will be mine!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
	{type = COMBAT_ENERGYDAMAGE, percent = 40},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 40},
	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -850},
	{name ="combat", interval = 1500, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -160, maxDamage = -380, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO},
	{name ="combat", interval = 1500, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -160, maxDamage = -450, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_GIANTICE}
}

monster.defenses = {
	defense = 55,
	armor = 50,
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 90, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "water elemental", chance = 10, interval = 1500, max = 1}
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
