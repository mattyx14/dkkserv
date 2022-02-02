local mType = Game.createMonsterType("anger")
local monster = {}

monster.name = "Anger"
monster.description = "a anger"
monster.experience = 4500
monster.outfit = {
	lookType = 149,
	lookHead = 0,
	lookBody = 85,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 0
}

monster.health = 4100
monster.maxHealth = 4100
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 3065
monster.speed = 200
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	{text = "Ahhhhrrrr!", yell = false},
	{text = "Waaaaah!", yell = false},
	{text = "Caaarnaaage!", yell = false},
	{text = "Dieee!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = -10},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = -10}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -510},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -300, length = 8, spread = 3, effect = CONST_ME_ENERGYAREA},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_DEATHDAMAGE, minDamage = -120, maxDamage = -700, length = 8, spread = 0, effect = CONST_ME_PURPLEENERGY},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -120, maxDamage = -300, radius = 4, target = false, effect = CONST_ME_PURPLEENERGY},
	{name ="fury skill reducer", interval = 2000, chance = 5},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -120, maxDamage = -300, radius = 3, target = false, effect = CONST_ME_HITAREA},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -125, maxDamage = -250, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS}
}

monster.defenses = {
	defense = 20,
	armor = 20,
	{name ="speed", interval = 2000, chance = 15, speed = {min = 800, max = 800}, duration = 5000, effect = CONST_ME_MAGIC_RED}
}

monster.loot = {
	{id = 2124, chance = 410},
	{name = "gold coin", chance = 30000, maxCount = 100},
	{name = "gold coin", chance = 30000, maxCount = 100},
	{name = "gold coin", chance = 38000, maxCount = 69},
	{name = "platinum coin", chance = 2800, maxCount = 4},
	{name = "terra rod", chance = 20000},
	{name = "golden legs", chance = 130},
	{name = "steel boots", chance = 790},
	{name = "orichalcum pearl", chance = 1500, maxCount = 4},
	{name = "red piece of cloth", chance = 4000},
	{name = "soul orb", chance = 21500},
	{name = "soul orb", chance = 50},
	{id = 6301, chance = 60},
	{name = "demonic essence", chance = 22500},
	{name = "concentrated demonic blood", chance = 35000, maxCount = 3},
	{id = 2160, chance = 1000},
	{name = "noble axe", chance = 2000},
	{name = "great health potion", chance = 10500},
	{name = "jalapeno pepper", chance = 29280, maxCount = 4}
}

mType:register(monster)
