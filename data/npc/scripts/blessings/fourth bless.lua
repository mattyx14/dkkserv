local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 		end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink() 							npcHandler:onThink() 						end


local node4 = keywordHandler:addKeyword({'fourth bless'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to buy the fourth blessing for 10000 gold?'})
	node4:addChildKeyword({'yes'}, StdModule.bless, {npcHandler = npcHandler, bless = 4, premium = true, cost = 10000})
	node4:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Too expensive, eh?'})

npcHandler:addModule(FocusModule:new())