local mType = Game.createMonsterType("metamorph")
local monster = {}

monster.name = "Solaruk"
monster.description = "a Solaruk"
monster.experience = 760000
monster.outfit = {
	lookType = 287,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 223700
monster.maxHealth = 223700
monster.runHealth = 0
monster.race = "blood"
monster.corpse = 6068
monster.speed = 320
monster.summonCost = 0
monster.maxSummons = 1

monster.changeTarget = {
	interval = 5000,
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
	{text = "I will make you believe in magic.", yell = false}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = true},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 30},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -3930},
	{name ="combat", interval = 1000, chance = 45, type = COMBAT_LIFEDRAIN, minDamage = -75, maxDamage = -750, range = 1},
	{name ="combat", interval = 1000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -460, maxDamage = -600, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT},
	{name ="combat", interval = 1000, chance = 55, type = COMBAT_DEATHDAMAGE, minDamage = -460, maxDamage = -600, range = 7, ShootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 1000, chance = 45, type = COMBAT_EARTHDAMAGE, minDamage = -460, maxDamage = -600, range = 7, ShootEffect = CONST_ANI_EARTH, effect = CONST_ME_STONES},
	{name ="combat", interval = 3000, chance = 35, type = COMBAT_DEATHDAMAGE, minDamage = -460, maxDamage = -600, range = 7, ShootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
	{name ="combat", interval = 1000, chance = 12, type = COMBAT_FIREDAMAGE, minDamage = -460, maxDamage = -600, radius = 6, target = false, effect = CONST_ME_EXPLOSIONAREA},
	{name ="Paralyze", interval = 1000, chance = 17, range = 7, effect = CONST_ME_POISONAREA},
	{name ="drunk", interval = 1000, chance = 8, drunkenness = 25, duration = 10000, range = 7, ShootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA}
}

monster.defenses = {
	defense = 35,
	armor = 30,
	{name ="outfit", interval = 1000, chance = 26, outfitMonster = "firelord", duration = 4000, effect = CONST_ME_MAGIC_BLUE},
	{name ="outfit", interval = 1000, chance = 25, outfitMonster = "apocalypse", duration = 4000, effect = CONST_ME_MAGIC_BLUE},
	{name ="outfit", interval = 1000, chance = 24, outfitMonster = "morgaroth", duration = 4000, effect = CONST_ME_MAGIC_BLUE},
	{name ="outfit", interval = 1000, chance = 23, outfitMonster = "giant spider", duration = 4000, effect = CONST_ME_MAGIC_BLUE},
	{name ="outfit", interval = 1000, chance = 22, outfitMonster = "undead dragon", duration = 4000, effect = CONST_ME_MAGIC_BLUE},
	{name ="outfit", interval = 1000, chance = 21, outfitMonster = "ferumbras", duration = 4000, effect = CONST_ME_MAGIC_BLUE},
	{name ="combat", interval = 1000, chance = 5000, type = COMBAT_HEALING, minDamage = 2300, maxDamage = 2700, effect = CONST_ME_MAGIC_BLUE},
	{name ="speed", interval = 4000, chance = 80, speed = {min = 800, max = 800}, duration = 8000, effect = CONST_ME_MAGIC_RED}
}

monster.summons = {
	{name = "firelord", chance = 12, interval = 1000, max = 1}
}

monster.loot = {
}

mType:register(monster)
