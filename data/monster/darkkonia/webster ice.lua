local mType = Game.createMonsterType("webster ice")
local monster = {}

monster.name = "Webster"
monster.description = "a webster"
monster.experience = 24000
monster.outfit = {
	lookType = 263,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 23550
monster.maxHealth = 23550
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 7344
monster.speed = 290
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
	{text = "Screeech!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 10},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -388},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK},
	{name ="combat", interval = 1500, chance = 75, type = COMBAT_ICEDAMAGE, minDamage = -153, maxDamage = -280, range = 7, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -110, maxDamage = -380, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK}
}

monster.defenses = {
	defense = 34,
	armor = 29,
	{name ="speed", interval = 5000, chance = 500, speed = {min = 700, max = 700}, duration = 2500, effect = CONST_ME_MAGIC_RED}
}

monster.loot = {
}

mType:register(monster)
