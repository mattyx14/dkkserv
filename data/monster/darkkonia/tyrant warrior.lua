local mType = Game.createMonsterType("tyrant warrior")
local monster = {}

monster.name = "Tyrant Warrior"
monster.description = "a tyrant warrior"
monster.experience = 18700
monster.outfit = {
	lookType = 498,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 12200
monster.maxHealth = 12200
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 14190
monster.speed = 320
monster.summonCost = 10000
monster.maxSummons = 0

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
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 90},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 90},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 90},
	{type = COMBAT_DEATHDAMAGE , percent = 90}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -1050},
	{name ="combat", interval = 1500, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -360, maxDamage = -580, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO},
	{name ="combat", interval = 1500, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -360, maxDamage = -650, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_GIANTICE},
	{name ="combat", interval = 1500, chance = 30, type = COMBAT_ICEDAMAGE, minDamage = -320, maxDamage = -500, length = 8, spread = 0, effect = CONST_ME_GIANTICE},
	{name ="combat", interval = 1800, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -350, maxDamage = -600, range = 3, radius = 5, target = true, effect = CONST_ME_BIGPLANTS},
	{name ="Paralyze", interval = 1500, chance = 17, range = 7, effect = CONST_ME_ICETORNADO}
}

monster.defenses = {
	defense = 55,
	armor = 50,
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 90, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE}
}

monster.loot = {
}

mType:register(monster)
