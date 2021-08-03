local mType = Game.createMonsterType("fire lord")
local monster = {}

monster.name = "Fire Lord"
monster.description = "a fire lord"
monster.experience = 6000
monster.outfit = {
	lookType = 242,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 313
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Hero Cave, Ferumbras' Citadel, Goroma, Ghostlands (Warlock area; unreachable), \z
		Liberty Bay (hidden underground passage; unreachable), Razzachai, deep in Pits of Inferno \z
		(found in every throneroom except Verminor's), deep Formorgar Mines, Demon Forge, \z
		Alchemist Quarter, Magician Quarter, Chyllfroest, Oramond Dungeon, Abandoned Sewers."
	}

monster.health = 8200
monster.maxHealth = 8200
monster.runHealth = 0
monster.race = "fire"
monster.corpse = 6324
monster.speed = 280
monster.summonCost = 0
monster.maxSummons = 1

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
	{text = "Your soul will be mine!", yell = false},
	{text = "MUHAHAHAHA!", yell = false},
	{text = "CHAMEK ATH UTHUL ARAK!", yell = false},
	{text = "I SMELL FEEEEAAAAAR!", yell = false},
	{text = "Your resistance is futile!", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 40},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 70, attack = 130},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -120, range = 7},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -250, range = 7, radius = 7, target = true, ShootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 1, target = true, ShootEffect = CONST_ANI_FIRE},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -490, length = 8, spread = 0, effect = CONST_ME_PURPLEENERGY},
	{name ="energy strike", interval = 2000, chance = 10, minDamage = -210, maxDamage = -300, range = 1},
	{name ="speed", interval = 2000, chance = 15, speed = {min = -700, max = -700}, duration = 30000, radius = 1, target = true, effect = CONST_ME_MAGIC_RED}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE},
	{name ="speed", interval = 2000, chance = 15, speed = {min = 320, max = 320}, duration = 5000, effect = CONST_ME_MAGIC_RED}
}

monster.summons = {
	{name = "fire elemental", chance = 10, interval = 2000}
}

monster.loot = {
	{id = 2148, chance = 60000, maxCount = 100},
	{id = 2148, chance = 60000, maxCount = 99},
	{id = 2152, chance = 100000, maxCount = 6},
	{id = 2795, chance = 20740, maxCount = 6},
	{id = 8473, chance = 20000, maxCount = 3},
	{id = 7590, chance = 14285, maxCount = 3},
	{id = 2387, chance = 14285},
	{id = 2149, chance = 10000},
	{id = 7368, chance = 5263, maxCount = 5},
	{id = 2151, chance = 3571},
	{id = 2176, chance = 2854},
	{id = 2393, chance = 200},
	{id = 2418, chance = 1428},
	{id = 2165, chance = 1333},
	{id = 2462, chance = 1204},
	{id = 1982, chance = 1190},
	{id = 2179, chance = 1010},
	{id = 2171, chance = 813},
	{id = 2396, chance = 666},
	{id = 2520, chance = 649},
	{id = 2214, chance = 473},
	{id = 5954, chance = 467},
	{id = 2514, chance = 389},
	{id = 2164, chance = 170},
	{id = 7393, chance = 100},
	{id = 7382, chance = 80}
}

mType:register(monster)
