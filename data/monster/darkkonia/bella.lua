local mType = Game.createMonsterType("bella")
local monster = {}

monster.name = "Bella"
monster.description = "Bella"
monster.experience = 4550
monster.outfit = {
	lookType = 331,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 4970
monster.maxHealth = 4970
monster.runHealth = 275
monster.race = "blood"
monster.corpse = 6081
monster.speed = 280
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 5000,
	chance = 15
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
	{text = "My beatiful face!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 90, attack = 90},
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -190, maxDamage = -250, range = 7, effect = CONST_ME_HEARTS},
	{name ="combat", interval = 2000, chance = 12, type = COMBAT_EARTHDAMAGE, minDamage = -210, maxDamage = -350, range = 7, effect = CONST_ME_CARNIPHILA}
}

monster.defenses = {
	defense = 25,
	armor = 25,
	{name ="combat", interval = 1000, chance = 18, type = COMBAT_HEALING, minDamage = 200, maxDamage = 400, effect = CONST_ME_MAGIC_RED},
	{name ="outfit", interval = 2000, chance = 14, outfitMonster = "medusa", duration = 6000, effect = CONST_ME_MAGIC_GREEN}
}

monster.loot = {
}

mType:register(monster)
