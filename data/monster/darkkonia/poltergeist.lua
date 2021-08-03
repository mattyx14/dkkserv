local mType = Game.createMonsterType("poltergeist")
local monster = {}

monster.name = "poltergeist"
monster.description = "a poltergeist"
monster.experience = 16090
monster.outfit = {
	lookType = 235,
	lookHead = 20,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 12050
monster.maxHealth = 12050
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 6348
monster.speed = 250
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
	{text = "Revenge ... is so ... sweet!", yell = false},
	{text = "Life...force!", yell = false},
	{text = "Feed me your... lifeforce!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -480, maxDamage = -1550},
	{name ="combat", interval = 1900, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -350, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_DEATH, effect = CONST_ME_STONES},
	{name ="combat", interval = 1900, chance = 50, type = COMBAT_DEATHDAMAGE, minDamage = -450, maxDamage = -750, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 1900, chance = 45, type = COMBAT_DEATHDAMAGE, minDamage = -450, maxDamage = -750, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -210, maxDamage = -400, range = 7, effect = CONST_ME_HEARTS}
}

monster.defenses = {
	defense = 20,
	armor = 25,
	{name ="combat", interval = 1000, chance = 50, type = COMBAT_HEALING, minDamage = 375, maxDamage = 725, effect = CONST_ME_MAGIC_BLUE}
}

monster.loot = {
}

mType:register(monster)
