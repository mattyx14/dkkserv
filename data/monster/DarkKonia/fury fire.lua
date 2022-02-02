local mType = Game.createMonsterType("fury fire")
local monster = {}

monster.name = "fury"
monster.description = "a fury"
monster.experience = 19460
monster.outfit = {
	lookType = 149,
	lookHead = 94,
	lookBody = 77,
	lookLegs = 96,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 33500
monster.maxHealth = 33500
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 6081
monster.speed = 300
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
}

monster.flags = {
	attackable = true,
	hostile = true,
	summonable = false,
	convinceable = false,
	illusionable = true,
	boss = false,
	pushable = false,
	canPushItems = false,
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
	{text = "Ahhhhrrrr!", yell = false},
	{text = "Waaaaah!", yell = false},
	{text = "Carnage!", yell = false}
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
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -500},
	{name ="combat", interval = 2200, chance = 17, type = COMBAT_PHYSICALDAMAGE, minDamage = -140, maxDamage = -200, range = 7, ShootEffect = CONST_ANI_THROWINGSTAR},
	{name ="melee", interval = 2500, chance = 15, minDamage = -115, maxDamage = -155},
	{name ="melee", interval = 3000, chance = 30, minDamage = -300, maxDamage = -420},
	{name ="combat", interval = 2600, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -170, maxDamage = -200, range = 7, ShootEffect = CONST_ANI_REDSTAR, effect = CONST_ME_FIREAREA}
}

monster.defenses = {
	defense = 30,
	armor = 25,
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 180, maxDamage = 290, effect = CONST_ME_MAGIC_BLUE}
}

monster.loot = {
}

mType:register(monster)
