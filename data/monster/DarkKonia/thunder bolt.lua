local mType = Game.createMonsterType("thunder bolt")
local monster = {}

monster.name = "Thunder Bolt"
monster.description = "the thunder bolt"
monster.experience = 11350
monster.outfit = {
	lookType = 290,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 5140
monster.maxHealth = 5140
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 8966
monster.speed = 380
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
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 15},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 15},
	{type = COMBAT_DEATHDAMAGE , percent = 17}
}

monster.attacks = {
	{name ="melee", interval = 2800, chance = 100, minDamage = 0, maxDamage = -1530},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -600, length = 4, spread = 2, effect = CONST_ME_ENERGYAREA},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_ENERGYDAMAGE, minDamage = -100, maxDamage = -480, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_YELLOWENERGY},
	{name ="energyfield", interval = 1000, chance = 15, range = 7, radius = 2, target = true, ShootEffect = CONST_ANI_ENERGY},
	{name ="combat", interval = 1000, chance = 19, type = COMBAT_ENERGYDAMAGE, minDamage = -250, maxDamage = -660, length = 4, spread = 2, effect = CONST_ME_PURPLEENERGY},
	{name ="combat", interval = 1000, chance = 23, type = COMBAT_ENERGYDAMAGE, minDamage = -150, maxDamage = -400, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_YELLOWENERGY}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{name ="speed", interval = 1000, chance = 10, speed = {min = 2000, max = 2000}, duration = 10000, effect = CONST_ME_MAGIC_RED}
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 8303, chance = 1500, maxCount = 2},
	{id = 7439, chance = 1000},
	{id = 2150, chance = 4500, maxCount = 3},
	{id = 8920, chance = 3000}
}

mType:register(monster)
