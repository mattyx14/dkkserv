local mType = Game.createMonsterType("lord of elements")
local monster = {}

monster.name = "Lord of the elements"
monster.description = "a lord of the elements"
monster.experience = 8000
monster.outfit = {
	lookType = 290,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 10000
monster.maxHealth = 10000
monster.runHealth = 0
monster.race = "undead"
monster.corpse = 9009
monster.speed = 370
monster.summonCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 5000,
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
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 100},
	{type = COMBAT_ENERGYDAMAGE, percent = 30},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 100},
	{type = COMBAT_DEATHDAMAGE , percent = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 110, attack = 115}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 1000, chance = 25, type = COMBAT_HEALING, minDamage = 100, maxDamage = 195, effect = CONST_ME_MAGIC_BLUE},
	{name ="outfit", interval = 1500, chance = 40, outfitMonster = "Energy Overlord", duration = 3000, effect = CONST_ME_MAGIC_BLUE},
	{name ="outfit", interval = 1500, chance = 40, outfitMonster = "Fire Overlord", duration = 3000, effect = CONST_ME_MAGIC_BLUE},
	{name ="outfit", interval = 1500, chance = 40, outfitMonster = "Earth Overlord", duration = 3000, effect = CONST_ME_MAGIC_BLUE},
	{name ="outfit", interval = 1500, chance = 40, outfitMonster = "Ice Overlord", duration = 3000, effect = CONST_ME_MAGIC_BLUE}
}

monster.summons = {
	{name = "Blistering Fire fire elemental", chance = 50, interval = 4000},
	{name = "Jagged Earth Elemental", chance = 50, interval = 4000},
	{name = "Roaring Water Elemental", chance = 50, interval = 4000},
	{name = "Overcharged Energy Elemental", chance = 50, interval = 4000}
}

monster.loot = {
}

mType:register(monster)
