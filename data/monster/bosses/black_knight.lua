local mType = Game.createMonsterType("Black Knight")
local monster = {}

monster.description = "a black knight"
monster.experience = 21600
monster.outfit = {
	lookType = 131,
	lookHead = 95,
	lookBody = 95,
	lookLegs = 95,
	lookFeet = 95,
	lookAddons = 3,
	lookMount = 392,
}

monster.health = 41800
monster.maxHealth = 41800
monster.race = "blood"
monster.corpse = 20355
monster.speed = 400
monster.manaCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
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
	pet = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "hero", chance = 10, interval = 2000},
	{name = "renegade knight", chance = 10, interval = 2000},
	{name = "vile grandmaster", chance = 10, interval = 2000},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "MINE!", yell = true},
	{text = "NO PRISONERS!", yell = true},
	{text = "NO MERCY!", yell = true},
	{text = "By Bolg's blood!", yell = false},
	{text = "You're no match for me!", yell = false}
}

monster.loot = {
	{name = "gold coin", chance = 23000, maxCount = 80},
	{name = "gold coin", chance = 23000, maxCount = 56},
	{name = "spear", chance = 30800, maxCount = 3},
	{name = "brown bread", chance = 21600, maxCount = 2},
	{id = 2120, chance = 16020},--rope
	{name = "brass legs", chance = 12200},
	{name = "halberd", chance = 11850},
	{name = "plate armor", chance = 10370},
	{name = "steel helmet", chance = 11220},
	{name = "two handed sword", chance = 8470},
	{name = "battle hammer", chance = 6910},
	{name = "warrior helmet", chance = 4710},
	{name = "dark helmet", chance = 2430},
	{name = "dark armor", chance = 2020},
	{name = "knight legs", chance = 1050},
	{name = "knight armor", chance = 750},
	{name = "ruby necklace", chance = 750},
	-- {name = "lightning legs", chance = 580},
	{name = "boots of haste", chance = 400},
	{name = "dragon lance", chance = 2290},
	{name = "piggy bank", chance = 2120},
	{name = "knight axe", chance = 100, unique = true},
	{name = "war hammer", chance = 100, unique = true},
	{name = "wyvern fang", chance = 100, unique = true}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -900},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -260, maxDamage = -310, radius = 6, effect = CONST_ME_MORTAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -200, range = 7, shootEffect = CONST_ANI_SPEAR, target = false},
	{name ="combat", interval = 2000, chance = 5, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -800, length = 8, spread = 3, target = false},
	{name ="combat", interval = 3000, chance = 18, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -150, radius = 5, effect = CONST_ME_GROUNDSHAKER, target = true},
}

monster.defenses = {
	defense = 50,
	armor = 50,
	{name ="invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_BLUE},
	{name ="combat", interval = 7000, chance = 20, type = COMBAT_HEALING, minDamage = 500, maxDamage = 700, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = 80},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 95},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 100},
	{type = COMBAT_HOLYDAMAGE , percent = -10},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
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
