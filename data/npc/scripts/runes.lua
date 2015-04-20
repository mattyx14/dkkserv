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
-- Menu Rune individual
shopModule:addBuyableItem({'great master spirit rune'}, 2266, 300, 1, 'great master spirit rune')
shopModule:addBuyableItem({'intense restore rune'}, 2265, 100, 1, 'intense restore rune')
shopModule:addBuyableItem({'ultimate restore rune'}, 2273, 100, 1, 'ultimate restore rune')
shopModule:addBuyableItem({'magic wall rune'}, 2293, 350, 1, 'magic wall rune')
shopModule:addBuyableItem({'destroy field rune'}, 2261, 45, 1, 'destroy field rune')
shopModule:addBuyableItem({'divine missile rune'}, 2295, 100, 1, 'divine missile rune')
shopModule:addBuyableItem({'explosion missile rune'}, 2313, 100, 1, 'explosion missile rune')
shopModule:addBuyableItem({'sudden death missile rune'}, 2268, 150, 1, 'sudden death missile rune')
shopModule:addBuyableItem({'avalanche missile rune'}, 2274, 150, 1, 'avalanche missile rune')
shopModule:addBuyableItem({'fire missile rune'}, 2302, 150, 1, 'fire missile rune')
shopModule:addBuyableItem({'electro missile rune'}, 2311, 150, 1, 'electro missile rune')
shopModule:addBuyableItem({'stome missile rune'}, 2288, 150, 1, 'stone missile rune')
shopModule:addBuyableItem({'paralyze rune'}, 2278, 700, 1, 'paralyze rune')
shopModule:addBuyableItem({'firebomb rune'}, 2305, 200, 1, 'firebomb rune')
shopModule:addBuyableItem({'energybomb rune'}, 2262, 200, 1, 'energybomb rune')
shopModule:addBuyableItem({'poisonbomb rune'}, 2286, 200, 1, 'poisonbomb rune')
shopModule:addBuyableItem({'blank rune'}, 2260, 10, 1, 'blank rune')

-- Menu Wand & Rod (CipSoft)
shopModule:addBuyableItem({'wand of vortex'}, 2190, 500, 'wand of vortex')
shopModule:addBuyableItem({'wand of dragonbreath'}, 2191, 1000, 'wand of dragonbreath')
shopModule:addBuyableItem({'wand of decay'}, 2188, 5000, 'wand of decay')
shopModule:addBuyableItem({'wand of draconia'}, 8921, 7500, 'wand of draconia')
shopModule:addBuyableItem({'wand of cosmic energy'}, 2189, 10000, 'wand of cosmic energy')
shopModule:addBuyableItem({'wand of inferno'}, 2187, 15000, 'wand of inferno')
shopModule:addBuyableItem({'wand of starstorm'}, 8920, 18000, 'wand of starstorm')
shopModule:addBuyableItem({'wand of voodoo'}, 8922, 22000, 'wand of voodoo')
shopModule:addBuyableItem({'signet ring'}, 7697, 20000, 'signet ring')
shopModule:addBuyableItem({'terran shield'}, 8909, 5000000, 'terran shield')

-- Seller Objets
shopModule:addSellableItem({'empty small potion flask'}, 7636, 30, 'empty small potion flask')
shopModule:addSellableItem({'empty strong potion flask'}, 7634, 50, 'empty strong potion flask')
shopModule:addSellableItem({'empty great potion flask'}, 7635, 50, 'empty great potion flask')

shopModule:addSellableItem({'gold ingot'}, 9971, 10000, 'gold ingot')
shopModule:addSellableItem({'glob of acid slime'}, 9967, 1000, 'glob of acid slime')
shopModule:addSellableItem({'wand of vortex'}, 2190, 250, 'wand of vortex')
shopModule:addSellableItem({'wand of dragonbreath'}, 2191, 500, 'wand of dragonbreath')
shopModule:addSellableItem({'wand of decay'}, 2188, 2500, 'wand of decay')
shopModule:addSellableItem({'wand of draconia'}, 8921, 3750, 'wand of draconia')
shopModule:addSellableItem({'wand of cosmic energy'}, 2189, 5000, 'wand of cosmic energy')
shopModule:addSellableItem({'wand of inferno'},2187, 7500, 'wand of inferno')
shopModule:addSellableItem({'wand of starstorm'}, 8920, 9000, 'wand of starstorm')
shopModule:addSellableItem({'wand of voodoo'}, 8922, 11000, 'wand of voodoo')
---- Final Data

local items = {[1] = 2190, [2] = 2182}
function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	if(msgcontains(msg, 'first wand')) then
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

npcHandler:setMessage(MESSAGE_GREET, "Greetings {|PLAYERNAME|}. Will you help me? If you do, I sell runes and wands!. And say {trade} and see what I am selling.")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
