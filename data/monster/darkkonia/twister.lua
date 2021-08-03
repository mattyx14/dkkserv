local mType = Game.createMonsterType("twister")
local monster = {}

monster.name = "twister"
monster.description = "a twister"
monster.experience = 0
monster.outfit = {
	lookTypeEx = 9110
}

monster.health = 50
monster.maxHealth = 50
monster.runHealth = 200
monster.race = "undead"
monster.corpse = 2019
monster.speed = 100
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 6
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
	staticAttackChance = 40,
	targetDistance = 3,
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
	{text = "...", yell = true}
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
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = 0, maxDamage = -40, range = 7, radius = 1, target = true, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO},
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = 0, maxDamage = -50, range = 7, radius = 1, target = true, effect = CONST_ME_ICEATTACK}
}

monster.defenses = {
	defense = 35,
	armor = 22
}

monster.loot = {
}

mType:register(monster)
