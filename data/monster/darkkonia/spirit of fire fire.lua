local mType = Game.createMonsterType("spirit of fire fire")
local monster = {}

monster.name = "spirit of fire"
monster.description = "a spirit of fire"
monster.experience = 18750
monster.outfit = {
	lookType = 242,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 22140
monster.maxHealth = 22140
monster.runHealth = 0
monster.race = "fire"
monster.corpse = 1492
monster.speed = 280
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
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -330},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -315, range = 7, ShootEffect = CONST_ANI_FIRE},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -700, maxDamage = -1015, range = 5, length = 4, spread = 2, effect = CONST_ME_FIREATTACK},
	{name ="combat", interval = 1000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -750, range = 7, radius = 3, target = false, effect = CONST_ME_EXPLOSIONAREA}
}

monster.defenses = {
	defense = 25,
	armor = 25
}

monster.loot = {
}

mType:register(monster)
