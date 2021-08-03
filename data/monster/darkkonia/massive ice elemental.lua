local mType = Game.createMonsterType("massive ice elemental")
local monster = {}

monster.name = "massive ice elemental"
monster.description = "a massive ice elemental"
monster.experience = 19450
monster.outfit = {
	lookType = 12,
	lookHead = 0,
	lookBody = 47,
	lookLegs = 114,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 33300
monster.maxHealth = 33300
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 8874
monster.speed = 1300
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
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 105, attack = 80},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -455, maxDamage = -960, range = 7, radius = 3, target = false, effect = CONST_ME_WATERSPLASH},
	{name ="combat", interval = 1000, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -350, maxDamage = -440, range = 7, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_WATERSPLASH},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -555, maxDamage = -850, range = 7, radius = 3, target = false, effect = CONST_ME_WATERSPLASH}
}

monster.defenses = {
	defense = 22,
	armor = 20,
	{name ="combat", interval = 1000, chance = 17, type = COMBAT_HEALING, minDamage = 30, maxDamage = 50, effect = CONST_ME_MAGIC_BLUE}
}

monster.loot = {
}

mType:register(monster)
