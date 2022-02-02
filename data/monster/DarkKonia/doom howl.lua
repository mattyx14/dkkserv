local mType = Game.createMonsterType("doom howl")
local monster = {}

monster.name = "doom howl"
monster.description = "a doom howl"
monster.experience = 23450
monster.outfit = {
	lookType = 308,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 32955
monster.maxHealth = 32955
monster.runHealth = 100
monster.race = "blood"
monster.corpse = 6080
monster.speed = 320
monster.summonCost = 0
monster.maxSummons = 6

monster.changeTarget = {
	interval = 0,
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
	{text = "BLOOD!", yell = true},
	{text = "HRAAAAAAAAAARRRRRR!", yell = true}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 45},
	{type = COMBAT_EARTHDAMAGE, percent = 30},
	{type = COMBAT_FIREDAMAGE, percent = 40},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 40},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 40}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -700, maxDamage = -1350},
	{name ="outfit", interval = 1000, chance = 9, outfitMonster = "werewolf", duration = 5000, range = 7, effect = CONST_ME_MAGIC_BLUE}
}

monster.defenses = {
	defense = 55,
	armor = 50
}

monster.summons = {
	{name = "war wolf", chance = 25, interval = 2500}
}

monster.loot = {
}

mType:register(monster)
