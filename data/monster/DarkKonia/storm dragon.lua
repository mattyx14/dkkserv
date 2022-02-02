local mType = Game.createMonsterType("storm dragon")
local monster = {}

monster.name = "storm dragon"
monster.description = "a storm dragon"
monster.experience = 18200
monster.outfit = {
	lookType = 248,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 18000
monster.maxHealth = 18000
monster.runHealth = 250
monster.race = "undead"
monster.corpse = 7091
monster.speed = 860
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
	illusionable = true,
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
	{text = "YOU WILL FREEZE!", yell = true},
	{text = "ZCHHHHH!", yell = true},
	{text = "I am so cool", yell = true},
	{text = "Chill out!.", yell = true}
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
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -80, maxDamage = -880},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -130, maxDamage = -680, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_ICEDAMAGE, minDamage = -80, maxDamage = -380, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO},
	{name ="Paralyze", interval = 1500, chance = 17, range = 7, effect = CONST_ME_YELLOW_RINGS},
	{name ="combat", interval = 1700, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -660, length = 4, spread = 2, effect = CONST_ME_ICEATTACK},
	{name ="combat", interval = 1500, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -760, length = 4, spread = 2, effect = CONST_ME_ICEATTACK},
	{name ="combat", interval = 1400, chance = 19, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -670, range = 7, radius = 3, target = false, effect = CONST_ME_ICEAREA},
	{name ="combat", interval = 2200, chance = 19, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -670, range = 7, radius = 3, target = false, effect = CONST_ME_ICEAREA}
}

monster.defenses = {
	defense = 35,
	armor = 22,
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 80, maxDamage = 120, effect = CONST_ME_MAGIC_BLUE}
}

monster.loot = {
}

mType:register(monster)
