local mType = Game.createMonsterType("captain jones")
local monster = {}

monster.name = "Captain Jones"
monster.description = "Captain Jones"
monster.experience = 2825
monster.outfit = {
	lookType = 196,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 5800
monster.maxHealth = 5800
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 5566
monster.speed = 370
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
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -15},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -280, maxDamage = -495, condition = {type = CONDITION_POISON, startDamage = 2, interval = 4000}},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -130, maxDamage = -280, radius = 1, target = false, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -230, maxDamage = -250, range = 1, radius = 1, target = true, ShootEffect = CONST_ANI_DEATH, effect = CONST_ME_SMALLCLOUDS},
	{name ="outfit", interval = 2000, chance = 5, outfitMonster = "Skeleton", duration = 4000, range = 3, ShootEffect = CONST_ANI_EXPLOSION}
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_HEALING, minDamage = 40, maxDamage = 70, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "Ron the Ripper", chance = 10, interval = 2000},
	{name = "Brutus Bloodbeard", chance = 10, interval = 2000},
	{name = "Deadeye Devious", chance = 10, interval = 2000},
	{name = "Lethal Lissy", chance = 10, interval = 2000}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 150},
	{id = 2165, chance = 33000},
	{id = 10601, chance = 13700},
	{id = 8871, chance = 3070},
	{id = 2655, chance = 1110},
	{id = 2383, chance = 1110}
}

mType:register(monster)
