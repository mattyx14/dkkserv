local mType = Game.createMonsterType("Tentacle 2")
local monster = {}

monster.description = "tentacle 2"
monster.experience = 840
monster.outfit = {
	lookTypeEx = 2187
}

monster.health = 30000
monster.maxHealth = 30000
monster.race = "blood"
monster.corpse = 0
monster.corpse = 0
monster.speed = 0

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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 15,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.events = {
	"TentacleEvent"
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "glkderheu", yell = false}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, skill = 60, attack = 60},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -260, maxDamage = -450, range = 6, shootEffect = CONST_ANI_ENERGYBALL, target = true},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_DROWNDAMAGE, minDamage = -250, maxDamage = -380, radius = 8, effect = CONST_ME_WATERSPLASH, target = false},
	{name ="condition", type = CONDITION_DROWN, interval = 2000, chance = 10, minDamage = -280, maxDamage = -400, radius = 8, effect = CONST_ME_WATERSPLASH, target = false},
}

monster.loot = {
}

monster.defenses = {
	defense = 50,
	armor = 50
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 50},
	{type = COMBAT_ENERGYDAMAGE, percent = 50},
	{type = COMBAT_EARTHDAMAGE, percent = 50},
	{type = COMBAT_FIREDAMAGE, percent = 50},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 50},
	{type = COMBAT_HOLYDAMAGE , percent = 50},
	{type = COMBAT_DEATHDAMAGE , percent = 50}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
