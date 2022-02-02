local mType = Game.createMonsterType("infernus")
local monster = {}

monster.name = "Infernus"
monster.description = "a Infernus"
monster.experience = 0
monster.outfit = {
	lookType = 862,
	lookHead = 98,
	lookBody = 96,
	lookLegs = 90,
	lookFeet = 92,
	lookAddons = 2,
	lookMount = 0
}

monster.health = 112000
monster.maxHealth = 112000
monster.runHealth = 2500
monster.race = "undead"
monster.corpse = 6068
monster.speed = 370
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 2000,
	chance = 50
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	rewardBoss = true,
	pet = false
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.events = {
	"MonsterHealFireDamage",
	"MonsterHealHolyDamage"
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "INFERNUS IS BACK!", yell = true},
	{text = "SOULS FOR INFERNUS!", yell = true}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = -100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -10},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 400, maxDamage = 1550},
	{name ="combat", interval = 1000, chance = 7, type = COMBAT_MANADRAIN, minDamage = -300, maxDamage = -600, range = 7},
	{name ="combat", interval = 1000, chance = 6, type = COMBAT_MANADRAIN, minDamage = -150, maxDamage = -350, radius = 5, target = false, effect = CONST_ME_HOLYDAMAGE},
	{name ="combat", interval = 1500, chance = 6, type = COMBAT_FIREDAMAGE, radius = 5, target = false, effect = CONST_ME_GROUNDSHAKER},
	{name ="combat", interval = 1000, chance = 70, type = COMBAT_FIREDAMAGE, minDamage = -220, maxDamage = -1500, length = 8, spread = 0, effect = CONST_ME_HOLYDAMAGE},
	{name ="combat", interval = 1000, chance = 34, type = COMBAT_FIREDAMAGE, minDamage = -350, maxDamage = -950, range = 7, radius = 5, target = true, ShootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE},
	{name ="firefield", interval = 1900, chance = 10, range = 7, radius = 4, target = true, ShootEffect = CONST_ANI_FIRE},
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -400, maxDamage = -1000, range = 7, radius = 5, target = false, effect = CONST_ME_BIGCLOUDS}
}

monster.defenses = {
	defense = 45,
	armor = 40
}

monster.loot = {
	{name = "Platinum Coin", chance = 50000},
	{name = "Crystal Coin", chance = 50000},
	{name = "Supreme Health Potion", chance = 50000, maxCount = 10},
	{name = "Ultimate Mana Potion", chance = 50000, maxCount = 20},
	{name = "Ultimate Spirit Potion", chance = 50000, maxCount = 20},
	{name = "Gold Token", chance = 50000},
	{name = "Silver Token", chance = 50000},
	{name = "Energy Bar", chance = 50000},
	{name = "Mysterious Remains", chance = 50000},
	{name = "Berserk Potion", chance = 25000},
	{name = "Bullseye Potion", chance = 25000},
	{name = "Green Gem", chance = 25000, maxCount = 2},
	{name = "Mastermind Potion", chance = 25000},
	{name = "Royal Star", chance = 25000},
	{name = "Blue Gem", chance = 25000},
	{name = "Chaos Mace", chance = 25000},
	{id = 7632, chance = 25000},
	{name = "Gold Ingot", chance = 25000},
	{name = "Magic Sulphur", chance = 25000},
	{name = "Piggy Bank", chance = 25000},
	{name = "Red Gem", chance = 25000},
	{name = "Skull Staff", chance = 25000},
	{name = "Violet Gem", chance = 25000},
	{name = "Yellow Gem", chance = 25000},
	{name = "Arcane Staff", chance = 12000},
	{name = "Dragon Figurine", chance = 12000},
	{name = "Giant Sapphire", chance = 12000},
	{name = "Huge Chunk of Crude Iron", chance = 12000},
	{name = "Pomegranate", chance = 12000},
	{name = "Ornate Locket", chance = 4000},
	{name = "Purple Tendril Lantern", chance = 500},
	{name = "Soul Stone", chance = 4000},
	{name = "Turquoise Tendril Lantern", chance = 500},
	{name = "Solar Axe", chance = 50}
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
