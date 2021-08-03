local mType = Game.createMonsterType("gloom widow")
local monster = {}

monster.name = "gloom widow"
monster.description = "a gloom widow"
monster.experience = 11600
monster.outfit = {
	lookType = 347,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 11300
monster.maxHealth = 11300
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 11310
monster.speed = 280
monster.summonCost = 0
monster.maxSummons = 4

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
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = false},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
	{type = COMBAT_HOLYDAMAGE , percent = 20},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -350, maxDamage = -1000},
	{name ="poisonfield", interval = 1000, chance = 17, range = 7, radius = 3, target = true, ShootEffect = CONST_ANI_POISON},
	{name ="combat", interval = 1000, chance = 30, type = COMBAT_EARTHDAMAGE, minDamage = -315, maxDamage = -735, range = 7, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_PLANTATTACK}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="speed", interval = 1000, chance = 6, speed = {min = 310, max = 310}, duration = 20000, effect = CONST_ME_MAGIC_RED},
	{name ="outfit", interval = 1000, chance = 10, outfitMonster = "spider", duration = 7000, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "giant spider", chance = 50, interval = 1000, max = 4}
}

monster.loot = {
	{id = 2169, chance = 700},
	{id = 2171, chance = 400}
}

mType:register(monster)
