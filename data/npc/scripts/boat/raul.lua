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

keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Where do you want to go? To {Vinor Swamp} or {Fynn Castle} and {Anshara Desert}."})
local travelNode = keywordHandler:addKeyword({'vinor swamp'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to sail to {Vinor Swamp}, the hidden town?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 1000, destination = {x=448, y=895, z=6} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'We would like to serve you some time.'})
local travelNode = keywordHandler:addKeyword({'fynn castle'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to sail to {Fynn Castle}, the main city?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 1000, destination = {x=958, y=1025, z=6} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'We would like to serve you some time.'})
local travelNode = keywordHandler:addKeyword({'anshara desert'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to sail to {Anshara Desert}, the desert city?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, level = 0, cost = 1000, destination = {x=647, y=361, z=6} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'We would like to serve you some time.'})

npcHandler:addModule(FocusModule:new())
