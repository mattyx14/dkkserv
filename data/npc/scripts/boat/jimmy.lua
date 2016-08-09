local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)
	npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
	npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
	npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
	npcHandler:onThink()
end

local config = {
	price = 50000
}

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	local player = Player(cid)
	if msgcontains(msg, "iquanus island") then
		if player:getStorageValue(Storage.AnniQuest.AnnihiMission.Done) == 1 then
			npcHandler:say("Do you seek a seek a passage to {Iquanus Island}?", cid)
			npcHandler.topic[cid] = 1
		else
			npcHandler:say("You don't complete the {Annihilator} quest.", cid)
		end
	elseif msgcontains(msg, "forgos ville") then
		if player:getStorageValue(Storage.AnniQuest.assassinDone) == 1 then
			npcHandler:say("Do you seek a seek a passage to {Magic Island}?", cid)
			npcHandler.topic[cid] = 2
		else
			npcHandler:say("You don't complete the {Assassin Outfit} quest.", cid)
		end
	elseif msgcontains(msg, "yes") then
		if player:removeMoney(config.price) then
			if npcHandler.topic[cid] == 1 then
				npcHandler:say("Let's go fo' a hunt and bring the beast down!", cid)
				player:teleportTo(Position(925, 1488, 6), false)
				player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
				npcHandler.topic[cid] = 0
			end
			if npcHandler.topic[cid] == 2 then
				npcHandler:say("Let's go fo' a hunt and bring the beast down!", cid)
				player:teleportTo(Position(353, 1394, 6), false)
				player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
				npcHandler.topic[cid] = 0
			end
		else
			npcHandler:say("You don't have enough money, " .. config.price .. " gold coins.", cid)
		end
	end
	return true
end

-- Travel
local function addTravelKeyword(keyword, cost, destination, action)
	local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'Do you seek a seek a passage to ' .. keyword:titleCase() .. ' for |TRAVELCOST|?', cost = cost, discount = 'postman'})
	travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, cost = cost, destination = destination}, nil, action)
	travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'We would like to serve you some time.', reset = true})
end

addTravelKeyword('fynn castle', 1000, Position(958, 1025, 6))
addTravelKeyword('forgotten island', 1000, Position(1591, 744, 6))
keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Iquanus Island}, {Fynn Castle}, {Forgos Ville} or to {Forgotten Island}?'})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, 'Welcome on board, |PLAYERNAME|. Where may I {travel} you today?')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye. Recommend us if you were satisfied with our service.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:addModule(FocusModule:new())
