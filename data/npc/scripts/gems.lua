local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 		end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink() 							npcHandler:onThink() 						end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addSellableItem({'black pearl'},				2144, 880,			'black pearl')
shopModule:addSellableItem({'small amethyst'},			2150, 900,			'small amethyst')
shopModule:addSellableItem({'small diamond'},			2145, 1200,			'small diamond')
shopModule:addSellableItem({'small emerald'},			2149, 1250,			'small emerald')
shopModule:addSellableItem({'small sapphire'},			2146, 1250,			'small sapphire')
shopModule:addSellableItem({'small ruby'},				2147, 750,			'small ruby')
shopModule:addSellableItem({'white pearl'},				2143, 860,			'white pearl')
shopModule:addSellableItem({'small topaz'},				9970, 900,			'small topaz')
shopModule:addSellableItem({'gold ingot'},				9971, 15000,		'gold ingot')
shopModule:addSellableItem({'giant shimmering pearl'},	7632, 13000,		'giant shimmering pearl')
shopModule:addSellableItem({'giant shimmering pearl'},	7633, 13000,		'giant shimmering pearl')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
