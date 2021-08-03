local mType = Game.createMonsterType("demon fire")
local monster = {}

monster.name = "Demon"
monster.description = "a demon"
monster.experience = 18700
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 12200
monster.maxHealth = 12200
monster.runHealth = 0
monster.race = "fire"
monster.corpse = 5995
monster.speed = 320
monster.summonCost = 10000
monster.maxSummons = 1

monster.changeTarget = {
	interval = 5000,
	chance = 8
}

monster.flags = {
	attackable = true,
	hostile = true,
	summonable = true,
	convinceable = true,
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
	{text = "MUHAHAHAHA!", yell = true},
	{text = "I SMELL FEEEEEAAAR!", yell = true},
	{text = "CHAMEK ATH UTHUL ARAK!", yell = true},
	{text = "Your resistance is futile!", yell = false},
	{text = "Your soul will be mine!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 90},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 90},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 90},
	{type = COMBAT_HOLYDAMAGE , percent = 90},
	{type = COMBAT_DEATHDAMAGE , percent = 90}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -700},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -110, range = 7},
	{name ="combat", interval = 1000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -160, maxDamage = -450, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
	{name ="combat", interval = 1000, chance = 14, type = COMBAT_DEATHDAMAGE, minDamage = -160, maxDamage = -350, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK},
	{name ="firefield", interval = 1000, chance = 15, range = 7, radius = 1, target = true, ShootEffect = CONST_ANI_FIRE},
	{name ="combat", interval = 1000, chance = 30, type = COMBAT_ENERGYDAMAGE, minDamage = -120, maxDamage = -380, length = 8, spread = 0, effect = CONST_ME_FIREAREA}
}

monster.defenses = {
	defense = 55,
	armor = 50,
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 90, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "fire elemental", chance = 10, interval = 2500, max = 1}
}

monster.loot = {
}

mType:register(monster)
