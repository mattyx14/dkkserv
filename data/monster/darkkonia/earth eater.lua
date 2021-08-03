local mType = Game.createMonsterType("earth eater")
local monster = {}

monster.name = "earth eater"
monster.description = "a earth eater"
monster.experience = 12150
monster.outfit = {
	lookType = 95,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 23450
monster.maxHealth = 23450
monster.runHealth = 30
monster.race = "undead"
monster.corpse = 6027
monster.speed = 300
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
	illusionable = true,
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
	{text = "Harrrr Harrrr!", yell = false},
	{text = "Stone sweet stone.", yell = false},
	{text = "Feel my claws, softskin.", yell = false},
	{text = "Chhhhhrrrrk!", yell = false},
	{text = "There is a stone in your shoe!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
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
	{name ="melee", interval = 2000, chance = 100, skill = 100, attack = 85},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -310, range = 7, ShootEffect = CONST_ANI_LARGEROCK},
	{name ="combat", interval = 1000, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -350, maxDamage = -410, range = 7, radius = 5, target = false, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_STONES}
}

monster.defenses = {
	defense = 20,
	armor = 26,
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_HEALING, minDamage = 5, maxDamage = 15, effect = CONST_ME_MAGIC_BLUE}
}

monster.loot = {
}

mType:register(monster)
