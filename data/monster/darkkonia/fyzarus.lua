local mType = Game.createMonsterType("fyzarus")
local monster = {}

monster.name = "Fyzarus"
monster.description = "a fyzarus"
monster.experience = 10200
monster.outfit = {
	lookType = 12,
	lookHead = 40,
	lookBody = 94,
	lookLegs = 0,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 9900
monster.maxHealth = 9900
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 0
monster.speed = 430
monster.summonCost = 10000
monster.maxSummons = 4

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
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 95},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 95},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 95},
	{type = COMBAT_HOLYDAMAGE , percent = 95},
	{type = COMBAT_DEATHDAMAGE , percent = 95}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -850},
	{name ="combat", interval = 1500, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -160, maxDamage = -380, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_BLACKSMOKE},
	{name ="combat", interval = 1500, chance = 25, type = COMBAT_FIREDAMAGE, minDamage = -160, maxDamage = -450, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_ICE, effect = CONST_ME_EXPLOSIONAREA},
	{name ="combat", interval = 1500, chance = 30, type = COMBAT_FIREDAMAGE, minDamage = -220, maxDamage = -400, length = 8, spread = 0, effect = CONST_ME_EXPLOSIONAREA},
	{name ="combat", interval = 1800, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -250, maxDamage = -400, range = 3, radius = 5, target = true, effect = CONST_ME_FIREAREA},
	{name ="Paralyze", interval = 1500, chance = 17, range = 7, effect = CONST_ME_BLACKSMOKE}
}

monster.defenses = {
	defense = 55,
	armor = 50,
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 90, maxDamage = 150, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "necromancer", chance = 20, interval = 2000},
	{name = "gladiator", chance = 15, interval = 2000},
	{name = "warlock", chance = 10, interval = 2000},
	{name = "hero", chance = 2, interval = 2000}
}

monster.loot = {
}

mType:register(monster)
