local mType = Game.createMonsterType("evil mastermind")
local monster = {}

monster.name = "evil mastermind"
monster.description = "a evil mastermind"
monster.experience = 22895
monster.outfit = {
	lookType = 256,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 31225
monster.maxHealth = 31225
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 7256
monster.speed = 270
monster.summonCost = 0
monster.maxSummons = 3

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
	targetDistance = 5,
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
	{text = "You have disturbed my thoughts!", yell = false},
	{text = "Let me turn you into something more useful!", yell = false},
	{text = "Let me taste your brain!", yell = false},
	{text = "You will be punished!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 45},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -30},
	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 120, attack = 145},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -245, maxDamage = -450, range = 7, ShootEffect = CONST_ANI_ENERGY},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -260, maxDamage = -330, range = 7, ShootEffect = CONST_ANI_FIRE},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -270, maxDamage = -490, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_EARTHDAMAGE, minDamage = -230, maxDamage = -470, range = 7, ShootEffect = CONST_ANI_POISON},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -375, maxDamage = -485, range = 7, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_MANADRAIN, minDamage = -220, maxDamage = -340, range = 7, effect = CONST_ME_MAGIC_RED},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 26,
	armor = 13,
	{name ="combat", interval = 2000, chance = 30, type = COMBAT_HEALING, minDamage = 0, maxDamage = 1, effect = CONST_ME_ENERGYHIT}
}

monster.summons = {
	{name = "Vampire", chance = 10, interval = 2000}
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
