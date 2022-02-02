local mType = Game.createMonsterType("dracula")
local monster = {}

monster.name = "Dracula"
monster.description = "a dracula"
monster.experience = 80000
monster.outfit = {
	lookType = 555,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 115000
monster.maxHealth = 115000
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 0
monster.speed = 320
monster.summonCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	{text = "Prepare to BLEED!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 80},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 80},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -920, maxDamage = -2150},
	{name ="combat", interval = 1000, chance = 13, type = COMBAT_MANADRAIN, minDamage = -300, maxDamage = -1600, range = 7},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -1250, maxDamage = -3100, range = 6, radius = 3, target = true, ShootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA},
	{name ="condition", interval = 2000, chance = 10, type = CONDITION_BLEEDING, startDamage = 0, tick = 4000, minDamage = -520, maxDamage = -960, radius = 6, target = false, effect = CONST_ME_BATS},
	{name ="effect", interval = 1000, chance = 6, minDamage = -320, maxDamage = -560, radius = 5, target = false, effect = CONST_ME_HITAREA},
	{name ="combat", interval = 1000, chance = 34, type = COMBAT_HOLYDAMAGE, minDamage = -310, maxDamage = -600, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYAREA}
}

monster.defenses = {
	defense = 35,
	armor = 35,
	{name ="outfit", interval = 2000, chance = 10, outfitMonster = "Vicious Manbat", duration = 4000},
	{name ="speed", interval = 2000, chance = 15, speed = {min = 450, max = 450}, duration = 4000, effect = CONST_ME_MAGIC_RED},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_HEALING, minDamage = 900, maxDamage = 2235, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "Arthiel", chance = 30, interval = 2000},
	{name = "Marziel", chance = 30, interval = 2000}
}

monster.loot = {
}

mType:register(monster)
