local internalNpcName = "Wendy"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 139, 
	lookHead = 132, 
	lookBody = 79, 
	lookLegs = 97, 
	lookFeet = 132, 
	lookAddons = 3
}

npcConfig.flags = {
	floorchange = false
}

npcConfig.voices = {
	interval = 15000, 
	chance = 50, 
	{text = 'I buy swords, clubs, axes, helmets, boots, legs, shields and armors.'}
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

keywordHandler:addKeyword({'smithy'}, StdModule.say, {npcHandler = npcHandler, text = "I am a trader. I don't buy everything, though. And not from everyone, for that matter, ask me for a {trade}."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Ah, a customer! Be greeted, |PLAYERNAME|! Welcome to my {smithy}.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Farewell, |PLAYERNAME|, may the winds guide your way.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Come back soon!")
npcHandler:setMessage(MESSAGE_SENDTRADE, "Take all the time you need to decide what you want!")
npcHandler:addModule(FocusModule:new())

npcConfig.shop = {
	{ itemName = "abyss hammer", clientId = 7414, sell = 10000 },
	{ itemName = "albino plate", clientId = 19358, sell = 750 },
	{ itemName = "amber staff", clientId = 7426, sell = 400 },
	{ itemName = "ancient amulet", clientId = 3025, sell = 100 },
	{ itemName = "assassin dagger", clientId = 7404, sell = 10000 },
	{ itemName = "bandana", clientId = 5917, sell = 75 },
	{ itemName = "beastslayer axe", clientId = 3344, sell = 750 },
	{ itemName = "beetle necklace", clientId = 10457, sell = 750 },
	{ itemName = "berserker", clientId = 7403, sell = 20000 },
	{ itemName = "blacksteel sword", clientId = 7406, sell = 3000 },
	{ itemName = "blessed sceptre", clientId = 7429, sell = 20000 },
	{ itemName = "bone shield", clientId = 3441, sell = 40 },
	{ itemName = "bonelord helmet", clientId = 3408, sell = 3750 },
	{ itemName = "brutetamer's staff", clientId = 7379, sell = 750 },
	{ itemName = "buckle", clientId = 17829, sell = 3500 },
	{ itemName = "castle shield", clientId = 3435, sell = 2500 },
	{ itemName = "chain bolter", clientId = 8022, sell = 20000 },
	{ itemName = "chaos mace", clientId = 7427, sell = 4500 },
	{ itemName = "cobra crown", clientId = 11674, sell = 25000 },
	{ itemName = "coconut shoes", clientId = 9017, sell = 250 },
	{ itemName = "composite hornbow", clientId = 8027, sell = 12500 },
	{ itemName = "cranial basher", clientId = 7415, sell = 15000 },
	{ itemName = "crocodile boots", clientId = 3556, sell = 500 },
	{ itemName = "crystal crossbow", clientId = 16163, sell = 17500 },
	{ itemName = "crystal mace", clientId = 3333, sell = 6000 },
	{ itemName = "crystal necklace", clientId = 3008, sell = 200 },
	{ itemName = "crystal ring", clientId = 6093, sell = 125 },
	{ itemName = "crystal sword", clientId = 7449, sell = 300 },
	{ itemName = "crystalline armor", clientId = 8050, sell = 8000 },
	{ itemName = "daramian mace", clientId = 3327, sell = 55 },
	{ itemName = "daramian waraxe", clientId = 3328, sell = 500 },
	{ itemName = "dark shield", clientId = 3421, sell = 200 },
	{ itemName = "death ring", clientId = 6299, sell = 500 },
	{ itemName = "demon shield", clientId = 3420, sell = 15000 },
	{ itemName = "demonbone amulet", clientId = 3019, sell = 16000 },
	{ itemName = "demonrage sword", clientId = 7382, sell = 18000 },
	{ itemName = "devil helmet", clientId = 3356, sell = 500 },
	{ itemName = "diamond sceptre", clientId = 7387, sell = 1500 },
	{ itemName = "divine plate", clientId = 8057, sell = 22500 },
	{ itemName = "djinn blade", clientId = 3339, sell = 7500 },
	{ itemName = "doll", clientId = 2991, sell = 100 },
	{ itemName = "dragon scale mail", clientId = 3386, sell = 20000 },
	{ itemName = "dragon slayer", clientId = 7402, sell = 7500 },
	{ itemName = "dragonbone staff", clientId = 7430, sell = 1500 },
	{ itemName = "dreaded cleaver", clientId = 7419, sell = 5000 },
	{ itemName = "dwarven armor", clientId = 3397, sell = 15000 },
	{ itemName = "elvish bow", clientId = 7438, sell = 1000 },
	{ itemName = "emerald bangle", clientId = 3010, sell = 400 },
	{ itemName = "epee", clientId = 3326, sell = 4000 },
	{ itemName = "flower dress", clientId = 9015, sell = 500 },
	{ itemName = "flower wreath", clientId = 9013, sell = 250 },
	{ itemName = "fur boots", clientId = 7457, sell = 1000 },
	{ itemName = "furry club", clientId = 7432, sell = 500 },
	{ itemName = "glacier amulet", clientId = 815, sell = 750 },
	{ itemName = "glacier kilt", clientId = 823, sell = 5500 },
	{ itemName = "glacier mask", clientId = 829, sell = 1250 },
	{ itemName = "glacier robe", clientId = 824, sell = 5500 },
	{ itemName = "glacier shoes", clientId = 819, sell = 1250 },
	{ itemName = "gold ring", clientId = 3063, sell = 4000 },
	{ itemName = "golden armor", clientId = 3360, sell = 10000 },
	{ itemName = "golden legs", clientId = 3364, sell = 15000 },
	{ itemName = "goo shell", clientId = 19372, sell = 2000 },
	{ itemName = "griffin shield", clientId = 3433, sell = 1500 },
	{ itemName = "guardian halberd", clientId = 3315, sell = 5500 },
	{ itemName = "hammer of wrath", clientId = 3332, sell = 15000 },
	{ itemName = "headchopper", clientId = 7380, sell = 3000 },
	{ itemName = "heavy mace", clientId = 3340, sell = 25000 },
	{ itemName = "heavy machete", clientId = 3330, sell = 45 },
	{ itemName = "heavy trident", clientId = 12683, sell = 1000 },
	{ itemName = "helmet of the lost", clientId = 17852, sell = 1000 },
	{ itemName = "heroic axe", clientId = 7389, sell = 15000 },
	{ itemName = "hibiscus dress", clientId = 8045, sell = 1500 },
	{ itemName = "hieroglyph banner", clientId = 12482, sell = 250 },
	{ itemName = "horn", clientId = 19359, sell = 150 },
	{ itemName = "jade hammer", clientId = 7422, sell = 12500 },
	{ itemName = "krimhorn helmet", clientId = 7461, sell = 100 },
	{ itemName = "lavos armor", clientId = 8049, sell = 8000 },
	{ itemName = "leaf legs", clientId = 9014, sell = 250 },
	{ itemName = "leopard armor", clientId = 3404, sell = 500 },
	{ itemName = "leviathan's amulet", clientId = 9303, sell = 1500 },
	{ itemName = "light shovel", clientId = 5710, sell = 150 },
	{ itemName = "lightning boots", clientId = 820, sell = 1250 },
	{ itemName = "lightning headband", clientId = 828, sell = 1250 },
	{ itemName = "lightning legs", clientId = 822, sell = 5500 },
	{ itemName = "lightning pendant", clientId = 816, sell = 750 },
	{ itemName = "lightning robe", clientId = 825, sell = 5500 },
	{ itemName = "lunar staff", clientId = 7424, sell = 2500 },
	{ itemName = "magic plate armor", clientId = 3366, sell = 45000 },
	{ itemName = "magma amulet", clientId = 817, sell = 750 },
	{ itemName = "magma boots", clientId = 818, sell = 1250 },
	{ itemName = "magma coat", clientId = 826, sell = 5500 },
	{ itemName = "magma legs", clientId = 821, sell = 5500 },
	{ itemName = "magma monocle", clientId = 827, sell = 1250 },
	{ itemName = "mammoth fur cape", clientId = 7463, sell = 3000 },
	{ itemName = "mammoth fur shorts", clientId = 7464, sell = 400 },
	{ itemName = "mammoth whopper", clientId = 7381, sell = 150 },
	{ itemName = "mastermind shield", clientId = 3414, sell = 25000 },
	{ itemName = "medusa shield", clientId = 3436, sell = 4500 },
	{ itemName = "mercenary sword", clientId = 7386, sell = 6000 },
	{ itemName = "model ship", clientId = 2994, sell = 500 },
	{ itemName = "mycological bow", clientId = 16164, sell = 17500 },
	{ itemName = "mystic blade", clientId = 7384, sell = 15000 },
	{ itemName = "naginata", clientId = 3314, sell = 1000 },
	{ itemName = "nightmare blade", clientId = 7418, sell = 17500 },
	{ itemName = "noble axe", clientId = 7456, sell = 5000 },
	{ itemName = "norse shield", clientId = 7460, sell = 750 },
	{ itemName = "onyx pendant", clientId = 22195, sell = 1750 },
	{ itemName = "orcish maul", clientId = 7392, sell = 3000 },
	{ itemName = "oriental shoes", clientId = 21981, sell = 7500 },
	{ itemName = "pair of iron fists", clientId = 17828, sell = 2000 },
	{ itemName = "paladin armor", clientId = 8063, sell = 7500 },
	{ itemName = "patched boots", clientId = 3550, sell = 1000 },
	{ itemName = "pharaoh banner", clientId = 12483, sell = 500 },
	{ itemName = "pharaoh sword", clientId = 3334, sell = 11500 },
	{ itemName = "pirate boots", clientId = 5461, sell = 1500 },
	{ itemName = "pirate hat", clientId = 6096, sell = 500 },
	{ itemName = "pirate knee breeches", clientId = 5918, sell = 100 },
	{ itemName = "pirate shirt", clientId = 6095, sell = 250 },
	{ itemName = "pirate voodoo doll", clientId = 5810, sell = 250 },
	{ itemName = "platinum amulet", clientId = 3055, sell = 1250 },
	{ itemName = "ragnir helmet", clientId = 7462, sell = 200 },
	{ itemName = "relic sword", clientId = 7383, sell = 12500 },
	{ itemName = "rift bow", clientId = 22866, sell = 22500 },
	{ itemName = "rift crossbow", clientId = 22867, sell = 22500 },
	{ itemName = "rift lance", clientId = 22727, sell = 15000 },
	{ itemName = "rift shield", clientId = 22726, sell = 25000 },
	{ itemName = "ring of the sky", clientId = 3006, sell = 15000 },
	{ itemName = "royal axe", clientId = 7434, sell = 20000 },
	{ itemName = "ruby necklace", clientId = 3016, sell = 1000 },
	{ itemName = "ruthless axe", clientId = 6553, sell = 22500 },
	{ itemName = "sacred tree amulet", clientId = 9302, sell = 1500 },
	{ itemName = "sapphire hammer", clientId = 7437, sell = 3500 },
	{ itemName = "scarab amulet", clientId = 3018, sell = 100 },
	{ itemName = "scarab shield", clientId = 3440, sell = 1000 },
	{ itemName = "shockwave amulet", clientId = 9304, sell = 1500 },
	{ itemName = "silver brooch", clientId = 3017, sell = 75 },
	{ itemName = "silver dagger", clientId = 3290, sell = 250 },
	{ itemName = "skull helmet", clientId = 5741, sell = 20000 },
	{ itemName = "skullcracker armor", clientId = 8061, sell = 9000 },
	{ itemName = "spiked squelcher", clientId = 7452, sell = 2500 },
	{ itemName = "steel boots", clientId = 3554, sell = 15000 },
	{ itemName = "swamplair armor", clientId = 8052, sell = 8000 },
	{ itemName = "taurus mace", clientId = 7425, sell = 250 },
	{ itemName = "tempest shield", clientId = 3442, sell = 17500 },
	{ itemName = "terra amulet", clientId = 814, sell = 750 },
	{ itemName = "terra boots", clientId = 813, sell = 1250 },
	{ itemName = "terra hood", clientId = 830, sell = 1250 },
	{ itemName = "terra legs", clientId = 812, sell = 5500 },
	{ itemName = "terra mantle", clientId = 811, sell = 5500 },
	{ itemName = "the justice seeker", clientId = 7390, sell = 20000 },
	{ itemName = "tortoise shield", clientId = 6131, sell = 75 },
	{ itemName = "vile axe", clientId = 7388, sell = 15000 },
	{ itemName = "voodoo doll", clientId = 3002, sell = 200 },
	{ itemName = "war axe", clientId = 3342, sell = 6000 },
	{ itemName = "war horn", clientId = 2958, sell = 4000 },
	{ itemName = "witch hat", clientId = 9653, sell = 2500 },
	{ itemName = "wyvern fang", clientId = 7408, sell = 750 }
}

-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, inBackpacks, name, totalCost)
	npc:sellItem(player, itemId, amount, subType, true, inBackpacks, 2854)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Bought %ix %s for %i %s.", amount, name, totalCost, ItemType(npc:getCurrency()):getPluralName():lower()))
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, clientId, subtype, amount, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType)
end

npcType:register(npcConfig)
