local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

local function onTradeRequest(cid)
	if Player(cid):getStorageValue(Storage.Missions.DjinnMission.Done) ~= 1 then
		npcHandler:say('Sorry, but you do not complete the quest Djinn u need quest {mystic blade}, {heroic Axe}, {warrior staff} and {oil lamp} quest. I have to make sure that I can trust in the quality of your wares.', cid)
		return false
	end

	return true
end

npcHandler:setCallback(CALLBACK_ONTRADEREQUEST, onTradeRequest)
npcHandler:addModule(FocusModule:new())
