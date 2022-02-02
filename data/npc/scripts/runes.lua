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

local voices = {
	{ text = 'Great spirit potions as well as health and mana potions in different sizes!' },
	{ text = 'If you need alchemical fluids like slime and blood, get them here.' }
}

npcHandler:addModule(VoiceModule:new(voices))

function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	local player = Player(cid)
	local vocationId = player:getVocation():getBaseId()
	local items = {
		[1] = 2190,
		[2] = 2182,
		[5] = 2190,
		[6] = 2182
	}

	if msgcontains(msg, 'first wand') or msgcontains(msg, 'first rod') then
		if isInArray({1, 2, 5, 6}, vocationId) then
			if player:getStorageValue(3050) == -1 then
				selfSay('I\'ll give you one a {' .. ItemType(items[vocationId]):getName() .. '} to begin your advanture with it {'.. ItemType(items[vocationId]):getName() ..'}, {yes}? ', cid)
				npcHandler.topic[cid] = 1
			else
				selfSay('What? I have already gave you one {' .. ItemType(items[vocationId]):getName() .. '}!', cid)
			end
		else
			selfSay('Sorry, you aren\'t a druid either a sorcerer.', cid)
		end
	elseif msgcontains(msg, 'wand of vortex') or msgcontains(msg, 'snakebite rod') or msgcontains(msg, 'yes') then
		if npcHandler.topic[cid] == 1 then
			player:addItem(items[vocationId], 1)
			player:setStorageValue(3050, 1)
			selfSay('Here you are young adept, take care yourself.', cid)
		end
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'no') and npcHandler.topic[cid] == 1 then
		selfSay('Ok then.', cid)
		npcHandler.topic[cid] = 0
	elseif isInArray({"vial", "ticket", "bonus"}, msg) then
		if player:removeItem(7634, 100) or player:removeItem(7635, 100) or player:removeItem(7636, 100) then
			player:addItem(5957, 1)
			npcHandler:say("Alright, thank you very much! Here is your lottery ticket, good luck. Would you like to deposit more vials that way?", cid)
			npcHandler.topic[cid] = 0
		else
			npcHandler:say("Sorry, but you don't have 100 empty flasks or vials of the SAME kind and thus don't qualify for the lottery. Would you like to deposit the vials you have as usual and receive 5 gold per vial?", cid)
			npcHandler.topic[cid] = 0
		end
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
