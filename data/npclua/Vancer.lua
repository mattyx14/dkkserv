local internalNpcName = "Vancer"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 684, 
	lookHead = 57, 
	lookBody = 59, 
	lookLegs = 40, 
	lookFeet = 79, 
	lookAddons = 1
}

npcConfig.flags = {
	floorchange = false
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{text = 'Selling distance weapons and ammunition. Special offers only available here, have a look!'}
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

keywordHandler:addKeyword({'ammunition container'}, StdModule.say, {npcHandler = npcHandler, text = "If need {first quiver}?."})
keywordHandler:addKeyword({'distance'}, StdModule.say, {npcHandler = npcHandler, text = "Selling distance weapons and ammunition. Special offers only available here, have a look, for that matter, ask me for a {trade}"})
keywordHandler:addKeyword({'mission'}, StdModule.say, {npcHandler = npcHandler, text = "There is a complicated mission regarding the {first sacrifice} of weapons."})
keywordHandler:addKeyword({'stage 1'}, StdModule.say, {npcHandler = npcHandler, text = "There is a complicated mission regarding the {first sacrifice} of weapons."})

local quiver = {
	[VOCATION.BASE_ID.PALADIN] = 35562,
}

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	local itemIdQuiver = quiver[player:getVocation():getBaseId()]

	if MsgContains(message, "addon") or MsgContains(message, "outfit") then
		if player:getStorageValue(DarkKonia.OutfitQuest.HunterHatAddon) < 1 then
			npcHandler:say("Oh, my winged tiara? Those are traditionally awarded after having completed a difficult {task} for our guild, only to female aspirants though. Male warriors will receive a hooded cloak.", npc, creature)
			npcHandler:setTopic(playerId, 1)
		end
	elseif MsgContains(message, "task") then
		if npcHandler:getTopic(playerId) == 1 then
			npcHandler:say("So you are saying that you would like to prove that you deserve to wear such a hooded cloak?", npc, creature)
			npcHandler:setTopic(playerId, 2)
		end
	elseif MsgContains(message, "crossbow") then
		if player:getStorageValue(DarkKonia.OutfitQuest.HunterHatAddon) == 1 then
			npcHandler:say("I'm so excited! Have you really found the crossbow from my sis?", npc, creature)
			npcHandler:setTopic(playerId, 4)
		end
	elseif MsgContains(message, "leather") then
		if player:getStorageValue(DarkKonia.OutfitQuest.HunterHatAddon) == 2 then
			npcHandler:say("Did you bring me 100 pieces of lizard leather and 100 pieces of red dragon leather?", npc, creature)
			npcHandler:setTopic(playerId, 5)
		end
	elseif MsgContains(message, "chicken wing") then
		if player:getStorageValue(DarkKonia.OutfitQuest.HunterHatAddon) == 3 then
			npcHandler:say("Were you able to get hold of 5 enchanted chicken wings?", npc, creature)
			npcHandler:setTopic(playerId, 6)
		end
	elseif MsgContains(message, "steel") then
		if player:getStorageValue(DarkKonia.OutfitQuest.HunterHatAddon) == 4 then
			npcHandler:say("Ah, have you brought one piece of royal steel, draconian steel and hell steel each?", npc, creature)
			npcHandler:setTopic(playerId, 7)
		end
	elseif MsgContains(message, "yes") then
		if npcHandler:getTopic(playerId) == 2 then
			npcHandler:say({
				"Alright, I will give you a chance. Pay close attention to what I'm going to tell you now. ...",
				"Recently, one of our members moved to Agard Town out of nowhere, talking about some strange cult. That is not the problem, but he took my favourite crossbow with him. ...",
				"Please find my crossbow. It has my name engraved on it and is very special to me. ...",
				"Secondly, we need a lot of leather for new quivers. 100 pieces of lizard leather and 100 pieces of red dragon leather should suffice. ...",
				"Third, since we are giving out tiaras, we are always in need of enchanted chicken wings. Please bring me 5, that would help us tremendously. ...",
				"Lastly, for our arrow heads we need a lot of steel. Best would be one piece of royal steel, one piece of draconian steel and one piece of hell steel. ...",
				"Did you understand everything I told you and are willing to handle this task?"
			}, npc, creature)
			npcHandler:setTopic(playerId, 3)
		elseif npcHandler:getTopic(playerId) == 3 then
			npcHandler:say("That's the spirit! I hope you will find my crossbow, |PLAYERNAME|!", npc, creature)
			player:setStorageValue(DarkKonia.OutfitQuest.HunterHatAddon, 1)
			player:setStorageValue(DarkKonia.OutfitQuest.DefaultStart, 1) --this for default start of Outfit and Addon Quests
			npcHandler:setTopic(playerId, 0)
		elseif npcHandler:getTopic(playerId) == 4 then
			if player:removeItem(5947, 1) then
				npcHandler:say("Yeah! I could kiss you right here and there! Besides, you're a handsome one. <giggles> Please bring me 100 pieces of lizard leather and 100 pieces of red dragon leather now!", npc, creature)
				player:setStorageValue(DarkKonia.OutfitQuest.HunterHatAddon, 2)
				npcHandler:setTopic(playerId, 0)
			else
				npcHandler:say("You don't have it...", npc, creature)
			end
		elseif npcHandler:getTopic(playerId) == 5 then
			if player:getItemCount(5876) >= 100 and player:getItemCount(5948) >= 100  then
				npcHandler:say("Good work, |PLAYERNAME|! That is enough leather for a lot of sturdy quivers. Now, please bring me 5 enchanted chicken wings.", npc, creature)
				player:removeItem(5876, 100)
				player:removeItem(5948, 100)
				player:setStorageValue(DarkKonia.OutfitQuest.HunterHatAddon, 3)
				npcHandler:setTopic(playerId, 0)
			else
				npcHandler:say("You don't have it...", npc, creature)
			end
		elseif npcHandler:getTopic(playerId) == 6 then
			if player:removeItem(5891, 5) then
				npcHandler:say("Great! Now we can create a few more Tiaras. If only they weren't that expensive... Well anyway, please obtain one piece of royal steel, draconian steel and hell steel each.", npc, creature)
				player:setStorageValue(DarkKonia.OutfitQuest.HunterHatAddon, 4)
				npcHandler:setTopic(playerId, 0)
			else
				npcHandler:say("You don't have it...", npc, creature)
			end
		elseif npcHandler:getTopic(playerId) == 7 then
			if player:getItemCount(5887) >= 1 and player:getItemCount(5888) >= 1 and player:getItemCount(5889) >= 1  then
				npcHandler:say("Wow, I'm impressed, |PLAYERNAME|. Your really are a valuable member of our paladin guild. I shall grant you your reward now. Wear it proudly!", npc, creature)
				player:removeItem(5887, 1)
				player:removeItem(5888, 1)
				player:removeItem(5889, 1)
				player:setStorageValue(DarkKonia.OutfitQuest.HunterHatAddon, 5)
				player:addOutfitAddon(129, 1)
				player:addOutfitAddon(137, 2)
				player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
				npcHandler:setTopic(playerId, 0)
			else
				npcHandler:say("You don't have it...", npc, creature)
			end
		end
	elseif MsgContains(message, "no") then
		if npcHandler:getTopic(playerId) > 1 then
			npcHandler:say("Then no.", npc, creature)
			npcHandler:setTopic(playerId, 0)
		end
		return true
	end

	if MsgContains(message, 'first quiver') then
		if player:isPaladin() then
			npcHandler:say('You ask me you begin your adventure with the {'.. ItemType(itemIdQuiver):getName() ..'}?', npc, creature)
			npcHandler:setTopic(playerId, 8)
		else
			npcHandler:say("This service is only for paladin's", npc, creature)
		end
	end
	if MsgContains(message, "yes") and npcHandler:getTopic(playerId) == 8 then
		if (player:getStorageValue(DarkKonia.FirstQuest.FirstWeapon) == 1) then
			npcHandler:say('What? I have already gave you one {' .. ItemType(itemIdQuiver):getName() .. '}!', npc, creature)
			npcHandler:removeInteraction(npc, creature)
		else
			if player:isPaladin() then
				npcHandler:say('Here you are young adept, take care yourself.', npc, creature)
				player:setStorageValue(DarkKonia.FirstQuest.FirstWeapon, 1)
				player:addItem(itemIdQuiver, 1)
			else
				npcHandler:say('Sorry, you aren\'t a paladin.', npc, creature)
			end
		end
	elseif  MsgContains(message, "no") and npcHandler:getTopic(playerId) == 8 then
		npcHandler:say("Ok then.", npc, creature)
		npcHandler:removeInteraction(npc, creature)
	end

	if MsgContains(message, 'first sacrifice') then
		npcHandler:say({
			"The first sacrifice tries to find 3 weapons which are not obtainable through loot only for missions or unique quests and it \z
			is very difficult to find them and it is also very easy to fail the mission since if that happens the weapon will not be able to \z
			get it again. Do you want to participate in it?"
		}, npc, creature)
		npcHandler:setTopic(playerId, 9)
	end
	if MsgContains(message, "yes") and npcHandler:getTopic(playerId) == 9 then
		if (player:getStorageValue(DarkKonia.FirstSacrifice.firstTip) == 1) then
			npcHandler:say('You already know about this consult your Quest Log.', npc, creature)
			npcHandler:setTopic(playerId, 0)
		else
			npcHandler:say('I will also give you information about your first sacrifice you can check it in your Quest Log.', npc, creature)
			player:setStorageValue(DarkKonia.FirstSacrifice.firstTip, 1)
			player:setStorageValue(DarkKonia.FirstSacrifice.wyvernFang, 0)
			player:setStorageValue(DarkKonia.FirstSacrifice.knightAxe, 0)
			player:setStorageValue(DarkKonia.FirstSacrifice.dragonHammer, 0)
		end
	elseif  MsgContains(message, "no") and npcHandler:getTopic(playerId) == 9 then
		npcHandler:say('I understand. Return to me if you change your mind, my child.', npc, creature)
		npcHandler:removeInteraction(npc, creature)
	end
	return true
end

-- Sniper Gloves
keywordHandler:addKeyword({'sniper gloves'}, StdModule.say, {npcHandler = npcHandler, text = 'We are always looking for sniper gloves. They are supposed to raise accuracy. If you find a pair, bring them here. Maybe I can offer you a nice trade.'}, function(player) return player:getItemCount(5875) == 0 end)

local function addGloveKeyword(text, condition, action)
	local gloveKeyword = keywordHandler:addKeyword({'sniper gloves'}, StdModule.say, {npcHandler = npcHandler, text = text[1]}, condition)
		gloveKeyword:addChildKeyword({'yes'}, StdModule.say, {npcHandler = npcHandler, text = text[2], reset = true}, function(player) return player:getItemCount(5875) == 0 end)
		gloveKeyword:addChildKeyword({'yes'}, StdModule.say, {npcHandler = npcHandler, text = text[3], reset = true}, nil, action)
		gloveKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = text[2], reset = true})
end

-- Free Account
addGloveKeyword({
		'You found sniper gloves?! Incredible! I would love to grant you the sniper gloves accessory, but I can only do that for premium warriors. However, I would pay you 2000 gold pieces for them. How about it?',
		'Maybe another time.',
		'Alright! Here is your money, thank you very much.'
	}, function(player) return not player:isPremium() end, function(player) player:removeItem(5875, 1) player:addMoney(2000) end
)

-- Premium account with addon
addGloveKeyword({
		'Did you find sniper gloves AGAIN?! Incredible! I cannot grant you other accessories, but would you like to sell them to me for 2000 gold pieces?',
		'Maybe another time.',
		'Alright! Here is your money, thank you very much.'
	}, function(player) return player:getStorageValue(DarkKonia.OutfitQuest.Hunter.AddonGlove) == 1 end, function(player) player:removeItem(5875, 1) player:addMoney(2000) end
)

-- If you don't have the addon
addGloveKeyword({
		'You found sniper gloves?! Incredible! Listen, if you give them to me, I will grant you the right to wear the sniper gloves accessory. How about it?',
		'No problem, maybe another time.',
		'Great! I hereby grant you the right to wear the sniper gloves as an accessory. Congratulations!'
	}, function(player) return player:getStorageValue(DarkKonia.OutfitQuest.Hunter.AddonGlove) == -1 end, function(player) player:removeItem(5875, 1) player:setStorageValue(DarkKonia.OutfitQuest.Hunter.AddonGlove, 1) player:addOutfitAddon(129, 2) player:addOutfitAddon(137, 1) player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE) end
)

-- Basic
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, text = "I am the leader of the Paladins. I help our members."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, text = "I am the leader of the Paladins. I help our members."})
keywordHandler:addKeyword({'paladins'}, StdModule.say, {npcHandler = npcHandler, text = "Paladins are great warriors and magicians. Besides that we are excellent missile fighters. Many people in DarkKonia want to join us."})
keywordHandler:addKeyword({'warriors'}, StdModule.say, {npcHandler = npcHandler, text = "Of course, we aren't as strong as knights, but no druid or sorcerer will ever defeat a paladin with a sword."})
keywordHandler:addKeyword({'magicians'}, StdModule.say, {npcHandler = npcHandler, text = "There are many magic spells and runes paladins can use."})

npcHandler:setMessage(MESSAGE_GREET, {
	"Greetings and Banor be with you, |PLAYERNAME|!!",
	"Welcome to my armory :)",
	"You are also interested in a {distance} weapons.",
	"I can also help you with the {ammunition container} for the paladin for you, the first is free.",
	"Or maybe you want to participate in a great {mission} that I have for you.",
	"Lastly, I can also you some powerful spells, but for this you need to complete the {mission} in which I want you to participate.",
	"Go with Wendy she is in charge of the complete mission I only give you access to {stage 1}."
})
npcHandler:setMessage(MESSAGE_FAREWELL, "Farewell, |PLAYERNAME|, may the winds guide your way.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Come back soon!")
npcHandler:setMessage(MESSAGE_SENDTRADE, "Of course, just browse through my wares. If you're only interested in {distance} equipment, let me know.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

npcConfig.shop = {
	-- Prismatic Items and others
	{ itemName = "prismatic armor", clientId = 16110, buy = 250000, sell = 20000, storageKey = DarkKonia.SecondSacrifice.secondTip, storageValue = 1},
	{ itemName = "prismatic legs", clientId = 16111, buy = 250000, sell = 20000, storageKey = DarkKonia.SecondSacrifice.secondTip, storageValue = 1},
	{ itemName = "prismatic boots", clientId = 16112, buy = 250000, sell = 20000, storageKey = DarkKonia.SecondSacrifice.secondTip, storageValue = 1},
	{ itemName = "crystal crossbow", clientId = 16163, buy = 250000, sell = 20000, storageKey = DarkKonia.SecondSacrifice.secondTip, storageValue = 1},
	{ itemName = "crude umbral bow", clientId = 20082, buy = 250000, sell = 20000, storageKey = DarkKonia.SecondSacrifice.secondTip, storageValue = 1},

	-- Ammunitions
	{ itemName = "arrow", clientId = 3447, buy = 3 },
	{ itemName = "assassin star", clientId = 7368, buy = 100 },
	{ itemName = "blue quiver", clientId = 35848, buy = 400 },
	{ itemName = "bolt", clientId = 3446, buy = 4 },
	{ itemName = "bow", clientId = 3350, buy = 400, sell = 100 },
	{ itemName = "crossbow", clientId = 3349, buy = 500, sell = 120 },
	{ itemName = "crystalline arrow", clientId = 15793, buy = 20 },
	{ itemName = "diamond arrow", clientId = 35901, buy = 70 },
	{ itemName = "durable exercise bow", clientId = 35282, buy = 945000, count = 1800 },
	{ itemName = "drill bolt", clientId = 16142, buy = 12 },
	{ itemName = "earth arrow", clientId = 774, buy = 5 },
	{ itemName = "enchanted spear", clientId = 7367, buy = 100 },
	{ itemName = "envenomed arrow", clientId = 16143, buy = 12 },
	{ itemName = "exercise bow", clientId = 28555, buy = 262500, count = 500 },
	{ itemName = "flaming arrow", clientId = 763, buy = 5 },
	{ itemName = "flash arrow", clientId = 761, buy = 5 },
	{ itemName = "lasting exercise bow", clientId = 35288, buy = 7560000, count = 14400 },
	{ itemName = "leaf star", clientId = 25735, buy = 80 , sell = 50 },
	{ itemName = "onyx arrow", clientId = 7365, buy = 7 },
	{ itemName = "piercing bolt", clientId = 7363, buy = 5 },
	{ itemName = "power bolt", clientId = 3450, buy = 7 },
	{ itemName = "prismatic bolt", clientId = 16141, buy = 20 },
	{ itemName = "quiver", clientId = 35562, buy = 400 },
	{ itemName = "red quiver", clientId = 35849, buy = 400 },
	{ itemName = "royal spear", clientId = 7378, buy = 50 },
	{ itemName = "royal star", clientId = 25759, buy = 110 },
	{ itemName = "shiver arrow", clientId = 762, buy = 5 },
	{ itemName = "spear", clientId = 3277, buy = 9 },
	{ itemName = "small stone", clientId = 1781, buy = 5 },
	{ itemName = "tarsal arrow", clientId = 14251, buy = 6 },
	{ itemName = "throwing knife", clientId = 3298, buy = 25 },
	{ itemName = "throwing star", clientId = 3287, buy = 42 },
	{ itemName = "sniper arrow", clientId = 7364, buy = 5 },
	{ itemName = "sniper gloves", clientId = 5875, sell = 2000 },
	{ itemName = "spectral bolt", clientId = 35902, buy = 70 },
	{ itemName = "viper star", clientId = 7366, buy = 30 },
	{ itemName = "composite hornbow", clientId = 8027, sell = 25000 },
	{ itemName = "crystal crossbow", clientId = 16163, sell = 35000 },
	{ itemName = "elvish bow", clientId = 7438, sell = 2000 },
	{ itemName = "mycological bow", clientId = 16164, sell = 35000 },
	{ itemName = "rift bow", clientId = 22866, sell = 45000 },
	{ itemName = "rift crossbow", clientId = 22867, sell = 45000 },
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
