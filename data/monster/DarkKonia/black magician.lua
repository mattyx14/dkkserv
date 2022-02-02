local mType = Game.createMonsterType("black magician")
local monster = {}

monster.name = "Black Magician"
monster.description = "a black magician"
monster.experience = 7500
monster.outfit = {
	lookType = 130,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 8400
monster.maxHealth = 8400
monster.runHealth = 800
monster.race = "blood"
monster.corpse = 20527
monster.speed = 350
monster.summonCost = 0
monster.maxSummons = 2

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
	{text = "Learn the secret of our magic! YOUR death!", yell = false},
	{text = "Even a rat is a better mage than you.", yell = false},
	{text = "We don't like intruders!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 25},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 25},
	{type = COMBAT_HOLYDAMAGE , percent = 25},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -360, maxDamage = -1480},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -85, maxDamage = -385, range = 7, ShootEffect = CONST_ANI_ENERGY},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -35, maxDamage = -275, range = 7},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_ENERGYAREA},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -350, maxDamage = -620, range = 7, radius = 3, target = true, ShootEffect = CONST_ANI_FLASHARROW, effect = CONST_ME_ENERGYAREA},
	{name ="energyfield", interval = 1000, chance = 15, range = 7, radius = 3, target = true, ShootEffect = CONST_ANI_ENERGY},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -165, maxDamage = -245, range = 7, radius = 4, target = false, effect = CONST_ME_BIGCLOUDS}
}

monster.defenses = {
	defense = 30,
	armor = 25,
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 60, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "black warlock", chance = 50, interval = 2000, max = 1},
	{name = "warlock", chance = 50, interval = 2000, max = 1}
}

monster.loot = {
}

mType:register(monster)
