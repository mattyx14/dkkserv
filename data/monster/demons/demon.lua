local mType = Game.createMonsterType("Demon")
local monster = {}

monster.description = "a demon"
monster.experience = 6000
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 35
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 5,
	FirstUnlock = 1,
	SecondUnlock = 3,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Hero Cave, Ferumbras' Citadel, Goroma, Ghostlands (Warlock area; unreachable), \z
		Liberty Bay (hidden underground passage; unreachable), Razzachai, deep in Pits of Inferno \z
		(found in every throneroom except Verminor's), deep Formorgar Mines, Demon Forge, \z
		Alchemist Quarter, Magician Quarter, Chyllfroest, Oramond Dungeon, Abandoned Sewers."
}

monster.health = 28200
monster.maxHealth = 28200
monster.race = "fire"
monster.corpse = 5995
monster.speed = 0
monster.manaCost = 0
monster.maxSummons = 2

monster.changeTarget = {
	interval = 2000,
	chance = 80
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 50,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 98,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = false,
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "fire lord", chance = 10, interval = 2000, max = 2},
	{name = "banshee", chance = 10, interval = 2000},
	{name = "diabolic imp", chance = 10, interval = 2000, max = 2},
	{name = "burning gladiator", chance = 10, interval = 2000},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Your soul will be mine!", yell = false},
	{text = "CHAMEK ATH UTHUL ARAK!", yell = false},
	{text = "Your resistance is futile!", yell = false}
}

monster.loot = {
	{name = "purple tome", chance = 1180},
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "small emerald", chance = 9690, maxCount = 5},
	{name = "small amethyst", chance = 7250, maxCount = 5},
	{name = "small ruby", chance = 7430, maxCount = 5},
	{name = "small topaz", chance = 7470, maxCount = 5},
	{name = "red gem", chance = 2220},
	{name = "demonic essence", chance = 14630},
	{name = "talon", chance = 3430},
	{name = "platinum coin", chance = 90540, maxCount = 8},
	{name = "might ring", chance = 1890},
	{name = "stealth ring", chance = 2170},
	{name = "platinum amulet", chance = 680},
	{name = "orb", chance = 2854},
	{name = "gold ring", chance = 1050},
	{name = "ring of healing", chance = 1990},
	{name = "giant sword", chance = 1980},
	{name = "ice rapier", chance = 1550},
	{name = "golden sickle", chance = 1440},
	{name = "fire axe", chance = 4030},
	{name = "devil helmet", chance = 1180},
	{name = "golden legs", chance = 440},
	{name = "magic plate armor", chance = 130},
	{name = "mastermind shield", chance = 480},
	{name = "demon shield", chance = 740},
	{name = "fire mushroom", chance = 19660, maxCount = 6},
	{name = "demon horn", chance = 14920},
	{name = "assassin star", chance = 12550, maxCount = 10},
	{name = "demonrage sword", chance = 70},
	{id = 7393, chance = 90},
	{name = "great mana potion", chance = 22220, maxCount = 3},
	{name = "ultimate health potion", chance = 19540, maxCount = 3},
	{name = "great spirit potion", chance = 18510, maxCount = 3},
	{name = "horned helmet", chance = 100, unique = true}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -680},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 200, maxDamage = -320, range = 7, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -450, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true},
	{name ="firefield", interval = 2000, chance = 10, range = 7, radius = 1, shootEffect = CONST_ANI_FIRE, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -350, maxDamage = -590, length = 8, spread = 3, effect = CONST_ME_PURPLEENERGY, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -310, maxDamage = -600, range = 1, shootEffect = CONST_ANI_ENERGY, target = false},
	{name ="demon fireball", interval = 2000, chance = 24, minDamage = -600, maxDamage = -1000, target = false},
	{name ="demon death", interval = 5000, chance = 20, target = false},
	{name ="demon paralyze", interval = 2000, chance = 12, target = false},
	{name ="demon summon", interval = 1000, chance = 12, target = false}
}

monster.defenses = {
	defense = 55,
	armor = 55,
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 600, maxDamage = 850, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 70},
	{type = COMBAT_ENERGYDAMAGE, percent = 70},
	{type = COMBAT_EARTHDAMAGE, percent = 70},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 100},
	{type = COMBAT_DROWNDAMAGE, percent = 100},
	{type = COMBAT_ICEDAMAGE, percent = 70},
	{type = COMBAT_HOLYDAMAGE , percent = 70},
	{type = COMBAT_DEATHDAMAGE , percent = 70}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}


mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
