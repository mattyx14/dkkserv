local mType = Game.createMonsterType("dragon aevis")
local monster = {}

monster.name = "dragon aevis"
monster.description = "a dragon aevis"
monster.experience = 9000
monster.outfit = {
	lookType = 39,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 16000
monster.maxHealth = 16000
monster.runHealth = 300
monster.race = "blood"
monster.corpse = 5984
monster.speed = 240
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
	{text = "ZCHHHHH", yell = true},
	{text = "YOU WILL BURN!", yell = true}
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
	{name ="melee", interval = 2000, chance = 100, minDamage = -380, maxDamage = -550},
	{name ="combat", interval = 1000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -260, maxDamage = -480, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK},
	{name ="firefield", interval = 1000, chance = 5, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_FIRE},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -370, maxDamage = -450, length = 4, spread = 2, effect = CONST_ME_FIREATTACK}
}

monster.defenses = {
	defense = 35,
	armor = 22,
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 57, maxDamage = 93, effect = CONST_ME_MAGIC_BLUE}
}

monster.loot = {
}

mType:register(monster)
