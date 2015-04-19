local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 			end
function onCreatureSay(cid, type, msg) 			npcHandler:onCreatureSay(cid, type, msg) 		end
function onThink() 					npcHandler:onThink() 					end

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
keywordHandler:addKeyword({'helmets'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I buy helmets.'})
keywordHandler:addKeyword({'boots'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I buy boots.'})
keywordHandler:addKeyword({'armors'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I buy armors.'})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I buy legs.'})
keywordHandler:addKeyword({'shields'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I buy shields.'})
keywordHandler:addKeyword({'swords'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I buy swords.'})
keywordHandler:addKeyword({'axes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I buy axes.'})
keywordHandler:addKeyword({'clubs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I buy hammers.'})

npcHandler:addModule(FocusModule:new())
