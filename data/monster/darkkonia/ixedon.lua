local mType = Game.createMonsterType("ixedon")
local monster = {}

monster.name = "Ixedon"
monster.description = "a Ixcedon"
monster.experience = 12500
monster.outfit = {
	lookType = 134,
	lookHead = 0,
	lookBody = 85,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 12900
monster.maxHealth = 12900
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 6080
monster.speed = 360
monster.summonCost = 0
monster.maxSummons = 1

monster.changeTarget = {
	interval = 1,
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
	{text = "He suffers while die!", yell = true},
	{text = "We ceases cold!", yell = true}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -5},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = -3},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -180, maxDamage = -490},
	{name ="combat", interval = 1900, chance = 45, type = COMBAT_ICEDAMAGE, minDamage = -250, maxDamage = -420, range = 8, radius = 6, target = true, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO},
	{name ="combat", interval = 1800, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -230, maxDamage = -355, range = 7, radius = 5, target = false, effect = CONST_ME_ICEATTACK}
}

monster.defenses = {
	defense = 20,
	armor = 30,
	{name ="combat", interval = 1000, chance = 10, type = COMBAT_HEALING, minDamage = 100, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "ice witch", chance = 10, interval = 2500, max = 2}
}

monster.loot = {
	{id = 2396, chance = 2500}
}

mType:register(monster)
