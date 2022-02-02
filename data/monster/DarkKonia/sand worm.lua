local mType = Game.createMonsterType("sand worm")
local monster = {}

monster.name = "Sand Worm"
monster.description = "a sand worm"
monster.experience = 10200
monster.outfit = {
	lookType = 505,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 9885
monster.maxHealth = 9885
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 8947
monster.speed = 286
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 60000,
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
	staticAttackChance = 50,
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
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 12},
	{type = COMBAT_HOLYDAMAGE , percent = 12},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -730},
	{name ="combat", interval = 1000, chance = 14, type = COMBAT_EARTHDAMAGE, minDamage = -190, maxDamage = -460, range = 7, radius = 3, target = true, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_STONES},
	{name ="combat", interval = 1500, chance = 14, type = COMBAT_EARTHDAMAGE, minDamage = -190, maxDamage = -460, radius = 2, target = false, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_STONES}
}

monster.defenses = {
	defense = 15,
	armor = 10
}

monster.loot = {
	{id = 2152, chance = 9000, maxCount = 2},
	{id = 2152, chance = 12000, maxCount = 4},
	{id = 2472, chance = 130},
	{id = 2470, chance = 400}
}

mType:register(monster)
