local mType = Game.createMonsterType("sokay guardian")
local monster = {}

monster.name = "Sokay Guardian"
monster.description = "a sokay guardian"
monster.experience = 32200
monster.outfit = {
	lookType = 842,
	lookHead = 94,
	lookBody = 77,
	lookLegs = 96,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 32200
monster.maxHealth = 32200
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 0
monster.speed = 280
monster.summonCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 4000,
	chance = 20
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
	staticAttackChance = 70,
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
	{text = "MUHAHAHAHA!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 90},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 90},
	{type = COMBAT_HOLYDAMAGE , percent = 90},
	{type = COMBAT_DEATHDAMAGE , percent = 90}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 200, attack = 150},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -200, maxDamage = -500, range = 7},
	{name ="combat", interval = 2000, chance = 40, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -500, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
	{name ="combat", interval = 2000, chance = 45, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -500, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA},
	{name ="combat", interval = 2000, chance = 50, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -500, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA},
	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 1, target = true, ShootEffect = CONST_ANI_FIRE},
	{name ="energyfield", interval = 2000, chance = 10, range = 7, radius = 1, target = true, ShootEffect = CONST_ANI_ENERGY},
	{name ="poisonfield", interval = 2000, chance = 10, range = 7, radius = 1, target = true, ShootEffect = CONST_ANI_POISON},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -500, length = 8, spread = 0, effect = CONST_ME_PURPLEENERGY},
	{name ="flame strike", interval = 2000, chance = 40, minDamage = -200, maxDamage = -500, range = 1, ShootEffect = CONST_ANI_FIRE},
	{name ="terra strike", interval = 2000, chance = 41, minDamage = -200, maxDamage = -500, range = 1, ShootEffect = CONST_ANI_POISON},
	{name ="energy strike", interval = 2000, chance = 45, minDamage = -200, maxDamage = -500, range = 1, ShootEffect = CONST_ANI_ENERGY},
	{name ="speed", interval = 2000, chance = 15, speed = {min = -700, max = -700}, duration = 30000, radius = 1, target = true, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name ="speed", interval = 2000, chance = 15, speed = {min = 320, max = 320}, duration = 5000, effect = CONST_ME_MAGIC_RED}
}

monster.summons = {
	{name = "fire lord", chance = 2, interval = 2000}
}

monster.loot = {
}

mType:register(monster)
