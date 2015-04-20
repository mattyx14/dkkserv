local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 		end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink() 							npcHandler:onThink() 						end
function onPlayerEndTrade(cid)				npcHandler:onPlayerEndTrade(cid)			end
function onPlayerCloseChannel(cid)			npcHandler:onPlayerCloseChannel(cid)		end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

-- Inicial Data
-- Menu Potion individual
	-- Health
	shopModule:addBuyableItem({'restore potion'}, 7618, 45, 1, 'restore potion')
	shopModule:addBuyableItem({'restore strong potion'}, 7588, 100, 1, 'restore strong potion')
	shopModule:addBuyableItem({'restore great potion'}, 7591, 130, 1, 'restore great potion')
	shopModule:addBuyableItem({'restore ultimate potion'}, 8473, 150, 1, 'restore ultimate potion')

	-- Mana
	shopModule:addBuyableItem({'spirit potion'}, 7620, 45, 1, 'spirit potion')
	shopModule:addBuyableItem({'spirit strong potion'}, 7589, 100, 1, 'spirit strong potion')
	shopModule:addBuyableItem({'spirit great potion'}, 7590, 130, 1, 'spirit great potion')
	shopModule:addBuyableItem({'spirit ultimate potion'}, 8472, 150, 1, 'spirit ultimate potion')


-- Menu Wand & Rod (CipSoft)
shopModule:addBuyableItem({'underworld rod'}, 8910, 22000, 'underworld rod')
shopModule:addBuyableItem({'snakebite rod'}, 2182, 500, 'snakebite rod')
shopModule:addBuyableItem({'moonlight rod'}, 2186, 1000, 'moonlight rod')
shopModule:addBuyableItem({'necrotic rod'}, 2185, 5000, 'necrotic rod')
shopModule:addBuyableItem({'northwind rod'}, 8911, 7500, 'northwind rod')
shopModule:addBuyableItem({'terra rod'}, 2181, 10000, 'terra rod')
shopModule:addBuyableItem({'hailstorm rod'}, 2183, 15000, 'hailstorm rod')
shopModule:addBuyableItem({'springsprout rod'}, 8912, 18000, 'springsprout rod')
shopModule:addBuyableItem({'underworld rod'}, 8910, 22000, 'underworld rod')
shopModule:addBuyableItem({'fiery shield'}, 8906, 5000000, 'fiery shield')
shopModule:addBuyableItem({'icy shield'}, 8907, 5000000, 'icy shield')

-- Seller Objets
shopModule:addSellableItem({'crystal ring'}, 2124, 2000, 'crystal ring')
shopModule:addSellableItem({'hibiscus dress'}, 8873, 5000, 'hibiscus dress')
shopModule:addSellableItem({'crystal of balance'}, 9942, 15000, 'crystal of balance')
shopModule:addSellableItem({'energy soil'}, 8303, 30000, 'energy soil')
shopModule:addSellableItem({'glob of tar'}, 9968, 1000, 'glob of tar')
shopModule:addSellableItem({'nails'}, 8309, 100, 'nails')

-- Seller Objets
shopModule:addSellableItem({'snakebite rod'}, 2182, 250,'snakebite rod')
shopModule:addSellableItem({'moonlight rod'}, 2186, 500,'moonlight rod')
shopModule:addSellableItem({'necrotic rod'}, 2185, 2500, 'necrotic rod')
shopModule:addSellableItem({'northwind rod'}, 8911, 3750, 'northwind rod')
shopModule:addSellableItem({'terra rod'}, 2181, 5000, 'terra rod')
shopModule:addSellableItem({'hailstorm rod'}, 2183, 7500, 'hailstorm rod')
shopModule:addSellableItem({'springsprout rod'}, 8912, 9000, 'springsprout rod')
shopModule:addSellableItem({'underworld rod'}, 8910, 11000, 'underworld rod')
---- Final Data

local items = {[1] = 2190, [2] = 2182}
function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	if(msgcontains(msg, 'first rod')) then
		if(isMagician(cid)) then
			if(getPlayerStorageValue(cid, 58447) <= 0) then
				selfSay('So you ask me for a {' .. getItemNameById(items[getPlayerVocation(cid)]) .. '} to begin your advanture?', cid)
				talkState[talkUser] = 1
			else
				selfSay('What? I have already gave you one {' .. getItemNameById(items[getPlayerVocation(cid)]) .. '}!', cid)
			end
		else
			selfSay('Sorry, you aren\'t a magician.', cid)
		end
	elseif(msgcontains(msg, 'yes')) then
		if(talkState[talkUser] == 1) then
			doPlayerAddItem(cid, items[getPlayerVocation(cid)], 1)
			selfSay('Here you are young adept, take care yourself.', cid)
			setPlayerStorageValue(cid, 58447, 1)
		end
		talkState[talkUser] = 0
	elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser])) then
		selfSay('Ok then.', cid)
		talkState[talkUser] = 0
	end

	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Greetings {|PLAYERNAME|}. Will you help me? If you do, I sell potions and rods!. And say {trade} and see what I am selling.")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
