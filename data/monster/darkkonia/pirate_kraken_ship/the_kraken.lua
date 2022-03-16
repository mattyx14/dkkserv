local mType = Game.createMonsterType("Kraken Head")
local monster = {}

monster.description = "the kraken head"
monster.experience = 250000
monster.outfit = {
	lookTypeEx = 35105
}

monster.health = 100000
monster.maxHealth = 100000
monster.race = "blood"
monster.corpse = 35600
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 0
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 10,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = true,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.events = {
	"TheKrakenPrepareDeath"
}

monster.light = {
	level = 0,
	color = 0
}

monster.loot = {
	{name = "Crystal Coin", chance = 68480, maxCount =50},
	{name = "Ultimate Health Potion", chance = 59780, maxCount =50},
	{name = "Ultimate Mana Potion", chance = 59780, maxCount =50},
 	{name = "Platinum Coin", chance = 23910, maxCount =100},
	{name = "Ultimate Spirit Potion", chance = 23910, maxCount =50},
	{name = "Mastermind Potion", chance = 19570, maxCount =5},
	{name = "Berserk Potion", chance = 18480, maxCount =5},
	{name = "Bullseye Potion", chance = 1630, maxCount =5},
	{name = "Pirate Coin", chance = 15220, maxCount =50},
	{name = "Small Treasure Chest", chance = 8700},
	{name = "Golden Dustbin", chance = 6520},
	{name = "Giant Amethyst", chance = 5430},
	{name = "Giant Ruby", chance = 4350},
	{name = "Tentugly's Eye", chance = 4350},
	{name = "Tiara", chance = 4350},
	{name = "Giant Topaz", chance = 3260},
	{name = "Golden Skull", chance = 3260},
	{name = "Golden Cheese Wedge", chance = 2170},
	{name = "Tentacle of Tentugly", chance = 2170},
	{name = "Plushie of Tentugly", chance = 1090},
	{name = "Wand of Destruction", chance = 2090, unique = true},
	{name = "Rod of Destruction", chance = 2090, unique = true},
	{id = 6099, chance = 1000, unique = true}, -- Brutus Bloodbeard's hat
	{id = 6100, chance = 1000, unique = true}, -- Lethal Lissy's shirt
	{id = 6101, chance = 1000, unique = true}, -- Ron the Ripper's sabre
	{id = 6102, chance = 1000, unique = true}, -- Deadeye Devious' eye patch
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -700},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -460, maxDamage = -850, range = 6, shootEffect = CONST_ANI_ENERGYBALL, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DROWNDAMAGE, minDamage = -350, maxDamage = -980, radius = 8, effect = CONST_ME_WATERSPLASH, target = false},
	{name ="condition", type = CONDITION_DROWN, interval = 2000, chance = 10, minDamage = -480, maxDamage = -1300, radius = 8, effect = CONST_ME_WATERSPLASH, target = false},
	{name ="kraken summon", interval = 10000, chance = 100, target = false},
}

monster.defenses = {
	defense = 65,
	armor = 55,
	{name ="combat", interval = 3000, chance = 25, type = COMBAT_HEALING, minDamage = 600, maxDamage = 2700, effect = CONST_ME_MAGIC_BLUE, target = false},
	{name ="speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 70},
	{type = COMBAT_EARTHDAMAGE, percent = -130},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = false},
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
