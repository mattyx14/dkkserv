local mType = Game.createMonsterType("black warlock")
local monster = {}

monster.name = "black warlock"
monster.description = "a black warlock"
monster.experience = 7500
monster.outfit = {
	lookType = 130,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 1,
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -360, maxDamage = -480},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -85, maxDamage = -185, range = 7, ShootEffect = CONST_ANI_ENERGY},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_MANADRAIN, minDamage = -35, maxDamage = -75, range = 7},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_ENERGYAREA},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -350, maxDamage = -420, range = 7, radius = 3, target = true, ShootEffect = CONST_ANI_FLASHARROW, effect = CONST_ME_ENERGYAREA},
	{name ="energyfield", interval = 1000, chance = 15, range = 7, radius = 3, target = true, ShootEffect = CONST_ANI_ENERGY},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -165, maxDamage = -245, range = 7, radius = 4, target = false, effect = CONST_ME_BIGCLOUDS}
}

monster.defenses = {
	defense = 30,
	armor = 25,
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 60, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "elder beholder", chance = 50, interval = 2000, max = 2}
}

monster.loot = {
	{id = 2148, chance = 29340, maxCount = 80},
	{id = 2679, chance = 19000, maxCount = 4},
	{id = 2689, chance = 9000},
	{id = 2411, chance = 7600},
	{id = 2047, chance = 1500},
	{id = 2124, chance = 700},
	{id = 2792, chance = 3000},
	{id = 2167, chance = 2200},
	{id = 2600, chance = 1000},
	{id = 2178, chance = 2000},
	{id = 2151, chance = 1150},
	{id = 7591, chance = 5190},
	{id = 7590, chance = 4760},
	{id = 7368, chance = 3500, maxCount = 4},
	{id = 2146, chance = 1190},
	{id = 1986, chance = 300},
	{id = 2123, chance = 430},
	{id = 2197, chance = 330},
	{id = 2114, chance = 60},
	{id = 12410, chance = 510},
	{id = 7368, chance = 3470, maxCount = 4}
}

mType:register(monster)
