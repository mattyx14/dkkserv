local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

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

keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, text = "I am Albinius, a worshipper of the {Astral Shapers}."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, text = "Precisely time."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, text = "I find ways to unveil the secrets of the stars. Judging by this question, I doubt you follow my weekly publications concerning this research."})

local function getTable()
	local itemsList = {
		{name = "heavy old tome", id = 26654, sell = 500}
	}
	return itemsList
end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	local player = Player(cid)
	if msgcontains(msg, "shapers") then
		npcHandler:say({
			"The {Shapers} were an advanced civilisation, well versed in art, construction, language and exploration of our world in their time. ...",
			"The foundations of this {temple} are testament to their genius and advanced understanding of complex problems. They were master craftsmen and excelled in magic."
		}, cid)
	end

	if msgcontains(msg, 'temple') then
		npcHandler:say({
			"The temple has been restored to its former glory, yet we strife to live and praise in the {Shaper} ways. Do you still need me to take some old {tomes} from you my child?"
		}, cid)
		npcHandler.topic[cid] = 1
	end
	if msgcontains(msg, "yes") and npcHandler.topic[cid] == 1 then
		if (player:getStorageValue(Storage.ForgottenKnowledge.Tomes) == 1) then
			npcHandler:say('You already offered enough tomes for us to study and rebuild this temple. Thank you, my child.', cid)
			npcHandler.topic[cid] = 0
		else
			if (player:getItemCount(26654) >= 5) then
				player:removeItem(26654, 5)
				npcHandler:say('Thank you very much for your contribution, child. Your first step in the ways of the {Shapers} has been taken.', cid)
				player:setStorageValue(Storage.ForgottenKnowledge.Tomes, 1)
			else
				npcHandler:say('You need 5 heavy old tome.', cid)
			end
		end
	elseif  msgcontains(msg, "no") and npcHandler.topic[cid] == 1 then
		npcHandler:say('I understand. Return to me if you change your mind, my child.', cid)
		npcHandler:releaseFocus(cid)
	end

	if msgcontains(msg, 'tomes') and player:getStorageValue(Storage.ForgottenKnowledge.Tomes) < 1 then
		npcHandler:say({
			"If you have some old shaper tomes I would {buy} them."
		}, cid)
		npcHandler.topic[cid] = 7
	end

	if msgcontains(msg, 'buy') then
		npcHandler:say("I'm sorry, I don't buy anything. My main concern right now is the bulding of this temple.", cid)
		openShopWindow(cid, getTable(), onBuy, onSell)
	end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Greetings, pilgrim. Welcome to the halls of hope. We are the keepers of this {temple} and welcome everyone willing to contribute.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Oh... farewell, child.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
