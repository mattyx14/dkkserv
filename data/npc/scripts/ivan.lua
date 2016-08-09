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

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	local player = Player(cid)
	if msgcontains(msg, "yes") then
		if npcHandler.topic[cid] == 1 then
			npcHandler:say("Wait. Me work no cheap is. Do favour for me first, {yes}?", cid)
			npcHandler.topic[cid] = 2
		elseif npcHandler.topic[cid] == 2 then
			if player:getItemCount(5944) > 0 then
				local count = player:getItemCount(5944)
				for i = 1, count do
					if math.random(100) <= 1 then
						player:addItem(6529, 6)
						player:removeItem(5944, 1)
					else
						player:addItem(6529, 3)
						player:removeItem(5944, 1)
					end
				end
				npcHandler:say("Cling clang!", cid)
				npcHandler.topic[cid] = 0
			end
		-- Devil Helmet
		elseif npcHandler.topic[cid] == 3 then
			if player:removeItem(2462, 1) then
				npcHandler:say("Cling clang!", cid)
				npcHandler.topic[cid] = 0
				player:addItem(5888, 1)
			end
		end
		-- Dragon Shield
		elseif npcHandler.topic[cid] == 4 then
			if player:removeItem(2516, 1) then
				npcHandler:say("Cling clang!", cid)
				npcHandler.topic[cid] = 0
				player:addItem(5889, 1)
			end
		-- Dragon Claw
		elseif npcHandler.topic[cid] == 5 then
			if player:removeItem(5919, 5) then
				npcHandler:say("Cling clang!", cid)
				npcHandler.topic[cid] = 0
				player:addItem(10020, 1)
			end
		-- Sniper Gloves
		elseif npcHandler.topic[cid] == 6 then
			if player:removeItem(5875, 3) then
				npcHandler:say("Cling clang!", cid)
				npcHandler.topic[cid] = 0
				player:addItem(5947, 1)
			end
	-- Soul Orb
	elseif msgcontains(msg, "soul orbs") then
		if player:getStorageValue(Storage.VampireQuest.draculaDone) == 1 then
			npcHandler:say("Uh. Me can make some nasty infernal bolts from soul orbs. Want to trade all?", cid)
			npcHandler.topic[cid] = 1
		end
	-- Devil Helmet
	elseif msgcontains(msg, "devil helmets") then
		if player:getStorageValue(Storage.VampireQuest.draculaDone) == 1 then
			npcHandler:say("Hellsteel is. Cursed and evil. Dangerous to work with. Me can make from evil helmet. Want to trade?", cid)
			npcHandler.topic[cid] = 3
		end
	-- Dragon Shield
	elseif msgcontains(msg, "dragon shields") then
		if player:getStorageValue(Storage.VampireQuest.draculaDone) == 1 then
			npcHandler:say("Firy steel it is. Need green ones' breath to melt. Or red even better. Me can make from shield. Want to trade?", cid)
			npcHandler.topic[cid] = 4
		end
	-- Dragon Claws
	elseif msgcontains(msg, "dragon claws") then
		if player:getStorageValue(Storage.VampireQuest.draculaDone) == 1 then
			npcHandler:say("Firy steel it is. Need green ones' breath to melt. Or red even better. Me can make from claw. Want to trade?", cid)
			npcHandler.topic[cid] = 5
		end
	-- Sniper Gloves
	elseif msgcontains(msg, "sniper gloves") then
		if player:getStorageValue(Storage.VampireQuest.draculaDone) == 1 then
			npcHandler:say("Firy steel it is. Need green ones' breath to melt. Or red even better. Me can make from claw. Want to trade?", cid)
			npcHandler.topic[cid] = 6
		end
	elseif isInArray({"jobs", "items"}, msg) then
		npcHandler:say('For example I trade: {sniper gloves}, {dragon shields}, {devil helmets}, {soul orbs}, {dragon claws}. \nYou need complete the Dracula Quest.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg,'no') and (npcHandler.topic[cid] >= 1 and npcHandler.topic[cid] <= 10) then
		npcHandler:say('Ok then.', cid)
		npcHandler.topic[cid] = 0
		npcHandler:releaseFocus(cid)
		npcHandler:resetNpc(cid)
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())