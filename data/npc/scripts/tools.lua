local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'brown bag'}, 1987, 20, 'brown bag')
shopModule:addBuyableItem({'brown backpack'}, 1988, 20, 'brown backpack')
shopModule:addBuyableItem({'basket'}, 1989, 6, 'basket')
shopModule:addBuyableItem({'present box'}, 1990, 20, 'present box')
shopModule:addBuyableItem({'green bag'}, 1991, 5, 'green bag')
shopModule:addBuyableItem({'yellow bag'}, 1992, 5, 'yellow bag')
shopModule:addBuyableItem({'red bag'}, 1993, 5, 'red bag')
shopModule:addBuyableItem({'purple bag'}, 1994, 5, 'purple bag')
shopModule:addBuyableItem({'blue bag'}, 1995, 5, 'blue bag')
shopModule:addBuyableItem({'grey bag'}, 1996, 5, 'grey bag')
shopModule:addBuyableItem({'golden bag'}, 1997, 5, 'golden bag')
shopModule:addBuyableItem({'green backpack'}, 1998, 20, 'green backpack')
shopModule:addBuyableItem({'yellow backpack'}, 1999, 20, 'yellow backpack')
shopModule:addBuyableItem({'red backpack'}, 2000, 20, 'red backpack')
shopModule:addBuyableItem({'purple backpack'}, 2001, 20, 'purple backpack')
shopModule:addBuyableItem({'blue backpack'}, 2002, 20, 'blue backpack')
shopModule:addBuyableItem({'grey backpack'}, 2003, 20, 'grey backpack')
shopModule:addBuyableItem({'golden backpack'}, 2004, 20, 'golden backpack')
shopModule:addBuyableItem({'beach backpack'}, 5949, 20, 'beach backpack')
shopModule:addBuyableItem({'beach bag'}, 5950, 20, 'beach bag')
shopModule:addBuyableItem({'camouflage bag'}, 3939, 20, 'camouflage bag')
shopModule:addBuyableItem({'camouflage backpack'}, 3940, 20, 'camouflage backpack')
shopModule:addBuyableItem({'pirate backpack'}, 5926, 20, 'pirate backpack')
shopModule:addBuyableItem({'pirate bag'}, 5927, 5, 'pirate bag')
shopModule:addBuyableItem({'fur backpack'}, 7342, 20, 'fur backpack')
shopModule:addBuyableItem({'fur bag'}, 7343, 20, 'fur bag')

shopModule:addBuyableItem({'blessed wooden stake'}, 5942, 10000, 'blessed wooden stake')

shopModule:addBuyableItem({'rope'}, 2120, 50, 'rope')
shopModule:addBuyableItem({'scythe'}, 2550, 50, 'scythe')
shopModule:addBuyableItem({'pick'}, 2553, 50, 'pick')
shopModule:addBuyableItem({'shovel'}, 2554, 50, 'shovel')
shopModule:addBuyableItem({'fishing rod'}, 2580, 150, 'fishing rod')
shopModule:addBuyableItem({'worms'}, 3976, 1, 'worms')
shopModule:addBuyableItem({'torch'}, 2150, 2, 'torch')
shopModule:addBuyableItem({'football'}, 2190, 111, 'football')
shopModule:addBuyableItem({'watch'}, 2036, 20, 'watch')

shopModule:addSellableItem({'rope'}, 2120, 8, 'rope')
shopModule:addSellableItem({'shovel'}, 2554, 8, 'shovel')
shopModule:addSellableItem({'scythe'}, 2550, 10, 'scythe')
shopModule:addSellableItem({'pick'}, 2553, 15, 'pick')
shopModule:addSellableItem({'fishing rod'}, 2580, 40, 'fishing rod')
shopModule:addSellableItem({'watch'}, 2036, 6, 'watch')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

