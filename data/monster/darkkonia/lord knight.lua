local mType = Game.createMonsterType("lord knight")
local monster = {}

monster.name = "Lord knight"
monster.description = "a lord knight"
monster.experience = 9250
monster.outfit = {
	lookType = 134,
	lookHead = 114,
	lookBody = 0,
	lookLegs = 114,
	lookFeet = 115,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 6800
monster.maxHealth = 6800
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 6080
monster.speed = 450
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
	{text = "MINE!", yell = true},
	{text = "NO MERCY!", yell = true},
	{text = "Terror!", yell = false},
	{text = "Yeahhh!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 25},
	{type = COMBAT_EARTHDAMAGE, percent = 25},
	{type = COMBAT_FIREDAMAGE, percent = 25},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 25}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -180, maxDamage = -755},
	{name ="combat", interval = 2500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -165, maxDamage = -345, range = 7, ShootEffect = CONST_ANI_EARTH},
	{name ="melee", interval = 3000, chance = 15, minDamage = -230, maxDamage = -555}
}

monster.defenses = {
	defense = 20,
	armor = 30,
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_HEALING, minDamage = 80, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE}
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
