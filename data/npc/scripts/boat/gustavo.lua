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
	price = 10000
}

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	local player = Player(cid)
	if msgcontains(msg, "fynn castle") then
		if player:getStorageValue(Storage.FirstQuest.rewardMisidia) == 1 then
			npcHandler:say("Do you seek a seek a passage to {Fynn Castle}?", cid)
			npcHandler.topic[cid] = 1
		else
			npcHandler:say("You don't complete the first Misidian quest.", cid)
		end
	elseif msgcontains(msg, "yes") then
		if player:removeMoney(config.price) then
			if npcHandler.topic[cid] == 1 then
				npcHandler:say("Let's go fo' a hunt and bring the beast down!", cid)
				player:teleportTo(Position(958, 1024, 6), false)
				player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
				npcHandler.topic[cid] = 0
			end
		else
			npcHandler:say("You don't have enough money, " .. config.price .. " gold coins.", cid)
		end
	end
	return true
end

keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, text = 'Where do you want to go? To {Fynn Castle}?'})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, 'Welcome on board, |PLAYERNAME|. Where may I {travel} you today?')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye. Recommend us if you were satisfied with our service.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Good bye then.')
npcHandler:addModule(FocusModule:new())
