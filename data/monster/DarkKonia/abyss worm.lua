local mType = Game.createMonsterType("abyss worm")
local monster = {}

monster.name = "abyss worm"
monster.description = "a abyss worm"
monster.experience = 12070
monster.outfit = {
	lookType = 295,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 6145
monster.maxHealth = 6145
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 8947
monster.speed = 300
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
}

monster.flags = {
	attackable = true,
	hostile = true,
	summonable = false,
	convinceable = false,
	illusionable = false,
	boss = false,
	pushable = false,
	canPushItems = false,
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
	{type = COMBAT_PHYSICALDAMAGE, percent = 40},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -240, maxDamage = -445},
	{name ="combat", interval = 1000, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -215, maxDamage = -435, range = 7, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_PLANTATTACK},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_PLANTATTACK},
	{name ="condition", interval = 1000, chance = 17, type = CONDITION_POISON, startDamage = 0, tick = 4000, minDamage = -130, maxDamage = -400, radius = 5, target = false, effect = CONST_ME_BIGPLANTS}
}

monster.defenses = {
	defense = 11,
	armor = 8
}

monster.loot = {
}

mType:register(monster)
