local internalNpcName = "Javier"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 151,
	lookHead = 114,
	lookBody = 159,
	lookLegs = 144,
	lookFeet = 124,
	lookAddons = 2
}

npcConfig.flags = {
	floorchange = false
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{text = 'Passages to Anshara Desert, Sohan Town, Misidia Settlement and to Elfic Ville.'}
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

keywordHandler:addKeyword({'keys'}, StdModule.say, {npcHandler = npcHandler, text = "Some evil pirates stole my keys and I need to know if you can support me in this {mission} to find them."})

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	if MsgContains(message, 'mission') then
		npcHandler:say({"Thank you very much... You can help me?"}, npc, creature)
		npcHandler:setTopic(playerId, 1)
	end
	if MsgContains(message, "yes") and npcHandler:getTopic(playerId) == 1 then
		if (player:getStorageValue(DarkKonia.Quest.Javierkeys) == 1) then
			npcHandler:say("Don't ask about silly missions.", npc, creature)
			npcHandler:removeInteraction(npc, creature)
		else
			player:setStorageValue(DarkKonia.Quest.Javierkeys, 1)
			player:setStorageValue(DarkKonia.Quest.Key.ID2088, 0)
			player:setStorageValue(DarkKonia.Quest.Key.ID2089, 0)
			player:setStorageValue(DarkKonia.Quest.Key.ID2090, 0)
			player:setStorageValue(DarkKonia.OutfitQuest.KrakenKilled, 0)
			npcHandler:say({
				'Indeed, I could use some help. The evil pirates of Misidia have convinced an alchemist from Elfic Ville to supply them with a substance called Fafnar\'s Fire ...',
				'It can burn even on water and is a threat to us all. I need you to travel to Elfic Ville and pretend to the alchemist and you are the one whom the other pirates sent to get the fire ...',
				'When she asks for a payment, tell her \'Your continued existence is payment enough\'. That should enrage any member of the Elfic Ville academy enough to refuse any further deals with the pirates.',
			}, npc, creature)
		end
	elseif  MsgContains(message, "no") and npcHandler:getTopic(playerId) == 1 then
		npcHandler:say("Ok then.", npc, creature)
		npcHandler:removeInteraction(npc, creature)
	end

	return true
end

-- Travel
local function addTravelKeyword(keyword, cost, destination, action, condition)
	if condition then
		keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'I\'m sorry but I don\'t sail there.'}, condition)
	end

	local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'Do you seek a passage to ' .. keyword:titleCase() .. ' for |TRAVELCOST|?', cost = cost, discount = 'postman'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, cost = cost, discount = 'postman', destination = destination}, nil, action)
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'We would like to serve you some time.', reset = true})
end

-- Block route
--[[
addTravelKeyword('anshara', 5000, Position(647, 361, 6))
addTravelKeyword('sohan', 5000, Position(336, 1128, 6))
]]

addTravelKeyword('elfic', 1000, Position(657, 1216, 6))
addTravelKeyword('misidia', 10000, Position(1059, 313, 6), nil,
function(player)
	return player:getStorageValue(DarkKonia.FirstQuest.rewardFynn) ~= 1
end)

-- Kick
keywordHandler:addKeyword({'kick'}, StdModule.kick, {npcHandler = npcHandler, destination = {Position(962, 1027, 7), Position(962, 1023, 7)}})

-- Basic
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, text = 'My name is Captain Javier from the DarkKonia Line.'})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, text = 'I am the captain of this sailing-ship.'})
keywordHandler:addKeyword({'captain'}, StdModule.say, {npcHandler = npcHandler, text = 'I am the captain of this sailing-ship.'})
keywordHandler:addKeyword({'ship'}, StdModule.say, {npcHandler = npcHandler, text = 'The DarkKonia Line connects all seaside towns of the world.'})
keywordHandler:addKeyword({'line'}, StdModule.say, {npcHandler = npcHandler, text = 'The DarkKonia Line connects all seaside towns of the world.'})
keywordHandler:addKeyword({'company'}, StdModule.say, {npcHandler = npcHandler, text = 'The DarkKonia Line connects all seaside towns of the world.'})
keywordHandler:addKeyword({'world'}, StdModule.say, {npcHandler = npcHandler, text = 'The DarkKonia Line connects all seaside towns of world.'})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, text = 'We can transport everything you want.'})
keywordHandler:addKeyword({'passenger'}, StdModule.say, {npcHandler = npcHandler, text = 'We would like to welcome you on board.'})
keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Anshara Desert}, {Sohan Town}, {Misidia Settlement} and to {Elfic Ville}?'})
keywordHandler:addKeyword({'route'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Anshara Desert}, {Sohan Town}, {Misidia Settlement} and to {Elfic Ville}?'})
keywordHandler:addKeyword({'passage'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Anshara Desert}, {Sohan Town}, {Misidia Settlement} and to {Elfic Ville}?'})
keywordHandler:addKeyword({'destination'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Anshara Desert}, {Sohan Town}, {Misidia Settlement} and to {Elfic Ville}?'})
keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Anshara Desert}, {Sohan Town}, {Misidia Settlement} and to {Elfic Ville}?'})
keywordHandler:addKeyword({'go'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Anshara Desert}, {Sohan Town}, {Misidia Settlement} and to {Elfic Ville}?'})

-- Block route
keywordHandler:addKeyword({'anshara'}, StdModule.say, {npcHandler = npcHandler, text = 'This area {Anshara Desert} is not completed not have access ...'})
keywordHandler:addKeyword({'sohan'}, StdModule.say, {npcHandler = npcHandler, text = 'This area {Sohan Town} is not completed not have access ...'})

npcHandler:setMessage(MESSAGE_GREET, 'Welcome on board, |PLAYERNAME|. Where can I {sail} you today?. I also need help finding my {keys}.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye. Recommend us if you were satisfied with our service.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)
