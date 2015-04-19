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

shopModule:addBuyableItem({'magic lightwand'}, 2163, 400, 'magic lightwand')
shopModule:addBuyableItem({'health potion'}, 7618, 75, 1, 'health potion')
shopModule:addBuyableItem({'mana potion'}, 7620, 75, 1, 'mana potion')
shopModule:addBuyableItem({'strong health'}, 7588, 100, 1, 'strong health potion')
shopModule:addBuyableItem({'strong mana'}, 7589, 80, 1, 'strong mana potion')
shopModule:addBuyableItem({'great health'}, 7591, 190, 1, 'great health potion')
shopModule:addBuyableItem({'great mana'}, 7590, 120, 1, 'great mana potion')
shopModule:addBuyableItem({'great spirit'}, 8472, 190, 1, 'great spirit potion')
shopModule:addBuyableItem({'ultimate health'}, 8473, 310, 1, 'ultimate health potion')

shopModule:addBuyableItem({'holy healing'}, 16080, 500, 1, 'holy healing')
shopModule:addBuyableItem({'holy drowing'}, 16081, 500, 1, 'holy drowing')
shopModule:addBuyableItem({'holy explosion'}, 16082, 500, 2, 'holy explosion')
shopModule:addBuyableItem({'holy sudden death'}, 16083, 500, 2, 'holy sudden death')
shopModule:addBuyableItem({'holy avalanche'}, 16096, 500, 2, 'holy avalanche')
shopModule:addBuyableItem({'holy tamesh'}, 16097, 500, 2, 'holy tamesh')
shopModule:addBuyableItem({'holy tamesh healing'}, 16119, 500, 2, 'holy tamesh healing')

shopModule:addSellableItem({'normal potion flask', 'normal flask'}, 7636, 75, 'empty small potion flask')
shopModule:addSellableItem({'strong potion flask', 'strong flask'}, 7634, 75, 'empty strong potion flask')
shopModule:addSellableItem({'great potion flask', 'great flask'}, 7635, 75, 'empty great potion flask')

shopModule:addBuyableItem({'instense healing'}, 2265, 350, 3, 'intense healing rune')
shopModule:addBuyableItem({'ultimate healing'}, 2273, 400, 3, 'ultimate healing rune')
shopModule:addBuyableItem({'magic wall'}, 2293, 350, 3, 'magic wall rune')
shopModule:addBuyableItem({'destroy field'}, 2261, 45, 3, 'destroy field rune')
shopModule:addBuyableItem({'light magic missile'}, 2287, 40, 10, 'light magic missile rune')
shopModule:addBuyableItem({'heavy magic missile'}, 2311, 120, 10, 'heavy magic missile rune')
shopModule:addBuyableItem({'great fireball'}, 2304, 180, 3, 'great fireball rune')
shopModule:addBuyableItem({'explosion'}, 2313, 250, 5, 'explosion rune')
shopModule:addBuyableItem({'sudden death'}, 2268, 350, 3, 'sudden death rune')
shopModule:addBuyableItem({'paralyze'}, 2278, 700, 1, 'paralyze rune')
shopModule:addBuyableItem({'convince creature'}, 2290, 80, 1, 'convince creature rune')
shopModule:addBuyableItem({'great plage missile'}, 2291, 210, 4, 'great plage missile rune')
shopModule:addBuyableItem({'great magic missile'}, 2310, 80,  4, 'great magic missile rune')
shopModule:addBuyableItem({'firebomb'}, 2305, 100,  2, 'firebomb')

shopModule:addBuyableItemContainer({'bp hp'}, 2000, 7618, 900, 1, 'backpack of health potions')
shopModule:addBuyableItemContainer({'bp mp'}, 2001, 7620, 1000, 1, 'backpack of mana potions')
shopModule:addBuyableItemContainer({'bp shp'}, 2000, 7588, 2000, 1, 'backpack of strong health potions')
shopModule:addBuyableItemContainer({'bp smp'}, 2001, 7589, 1600, 1, 'backpack of strong mana potions')
shopModule:addBuyableItemContainer({'bp ghp'}, 2000, 7591, 3800, 1, 'backpack of great health potions')
shopModule:addBuyableItemContainer({'bp gmp'}, 2001, 7590, 2400, 1, 'backpack of great mana potions')
shopModule:addBuyableItemContainer({'bp gsp'}, 1999, 8472, 3800, 1, 'backpack of great spirit potions')
shopModule:addBuyableItemContainer({'bp uhp'}, 2000, 8473, 6200, 1, 'backpack of ultimate health potions')
shopModule:addBuyableItemContainer({'bp usp'}, 2000, 16126, 6200, 1, 'backpack of ultimate spirit potions')

shopModule:addBuyableItemContainer({'bp uh'}, 2002, 2273, 8000, 3, 'backpack of ultimate ultimate healing runes')
shopModule:addBuyableItemContainer({'bp xlp'}, 2001, 2313, 4000, 4, 'backpack of explosion runes')
shopModule:addBuyableItemContainer({'bp sd'}, 5926, 2268, 5000, 3, 'backpack of sudden death runes')
shopModule:addBuyableItemContainer({'bp ih'}, 2003, 2265, 7000, 3, 'backpack of instense healing runes')
shopModule:addBuyableItemContainer({'bp avl'}, 5949, 2274, 5000, 3, 'backpack of avalanche runes')

shopModule:addBuyableItemContainer({'bp ssd'}, 5926, 2263, 7000, 3, 'backpack of great sd runes')
shopModule:addBuyableItemContainer({'bp sxpl'}, 2001, 2312, 7000, 3, 'backpack of great exp runes')
shopModule:addBuyableItemContainer({'bp savl'}, 5949, 2275, 7000, 3, 'backpack of great avl runes')

shopModule:addBuyableItem({'wand of vortex', 'vortex'}, 2190, 500, 'wand of vortex')
shopModule:addBuyableItem({'wand of dragonbreath', 'dragonbreath'}, 2191, 1000, 'wand of dragonbreath')
shopModule:addBuyableItem({'wand of decay', 'decay'}, 2188, 5000, 'wand of decay')
shopModule:addBuyableItem({'wand of draconia', 'draconia'}, 8921, 7500, 'wand of draconia')
shopModule:addBuyableItem({'wand of cosmic energy', 'cosmic energy'}, 2189, 10000, 'wand of cosmic energy')
shopModule:addBuyableItem({'wand of inferno', 'inferno'}, 2187, 15000, 'wand of inferno')
shopModule:addBuyableItem({'wand of starstorm', 'starstorm'}, 8920, 18000, 'wand of starstorm')
shopModule:addBuyableItem({'underworld rod', 'underworld'}, 8910, 22000, 'underworld rod')
shopModule:addBuyableItem({'wand of voodoo', 'voodoo'}, 8922, 22000, 'wand of voodoo')

shopModule:addBuyableItem({'snakebite rod', 'snakebite'}, 2182, 500, 'snakebite rod')
shopModule:addBuyableItem({'moonlight rod', 'moonlight'}, 2186, 1000, 'moonlight rod')
shopModule:addBuyableItem({'necrotic rod', 'necrotic'}, 2185, 5000, 'necrotic rod')
shopModule:addBuyableItem({'northwind rod', 'northwind'}, 8911, 7500, 'northwind rod')
shopModule:addBuyableItem({'terra rod', 'terra'}, 2181, 10000, 'terra rod')
shopModule:addBuyableItem({'hailstorm rod', 'hailstorm'}, 2183, 15000, 'hailstorm rod')
shopModule:addBuyableItem({'springsprout rod', 'springsprout'}, 8912, 18000, 'springsprout rod')
shopModule:addBuyableItem({'underworld rod', 'underworld'}, 8910, 22000, 'underworld rod')

shopModule:addBuyableItem({'star wand', 'starwand'}, 7735, 500000, 'star wand')
shopModule:addBuyableItem({'signet ring', 'signetring'}, 7697, 20000, 'signet ring')
shopModule:addBuyableItem({'terran shield', 'terranshield'}, 8909, 5000000, 'terran shield')
shopModule:addBuyableItem({'fiery shield', 'fieryshield'}, 8906, 5000000, 'fiery shield')
shopModule:addBuyableItem({'icy shield', 'icyshield'}, 8907, 5000000, 'icy shield')
shopModule:addBuyableItem({'hallowed axe', 'hallowedaxe'}, 8293, 3000000, 'hallowed axe')
shopModule:addBuyableItem({'brocade backpack', 'brocadebackpack'}, 9774, 3000, 'brocade backpack')

shopModule:addSellableItem({'wand of vortex', 'vortex'}, 2190, 250, 'wand of vortex')
shopModule:addSellableItem({'wand of dragonbreath', 'dragonbreath'}, 2191, 500, 'wand of dragonbreath')
shopModule:addSellableItem({'wand of decay', 'decay'}, 2188, 2500, 'wand of decay')
shopModule:addSellableItem({'wand of draconia', 'draconia'}, 8921, 3750, 'wand of draconia')
shopModule:addSellableItem({'wand of cosmic energy', 'cosmic energy'}, 2189, 5000, 'wand of cosmic energy')
shopModule:addSellableItem({'wand of inferno', 'inferno'},2187, 7500, 'wand of inferno')
shopModule:addSellableItem({'wand of starstorm', 'starstorm'}, 8920, 9000, 'wand of starstorm')
shopModule:addSellableItem({'wand of voodoo', 'voodoo'}, 8922, 11000, 'wand of voodoo')

shopModule:addSellableItem({'snakebite rod', 'snakebite'}, 2182, 250,'snakebite rod')
shopModule:addSellableItem({'moonlight rod', 'moonlight'}, 2186, 500,   'moonlight rod')
shopModule:addSellableItem({'necrotic rod', 'necrotic'}, 2185, 2500, 'necrotic rod')
shopModule:addSellableItem({'northwind rod', 'northwind'}, 8911, 3750, 'northwind rod')
shopModule:addSellableItem({'terra rod', 'terra'}, 2181, 5000, 'terra rod')
shopModule:addSellableItem({'hailstorm rod', 'hailstorm'}, 2183, 7500, 'hailstorm rod')
shopModule:addSellableItem({'springsprout rod', 'springsprout'}, 8912, 9000, 'springsprout rod')
shopModule:addSellableItem({'underworld rod', 'underworld'}, 8910, 11000, 'underworld rod')

shopModule:addBuyableItem({'staff of earth'}, 15956, 50000, 1, 'staff of earth')
shopModule:addBuyableItem({'staff of helo'}, 15955, 50000, 1, 'staff of helo')
shopModule:addBuyableItem({'staff of fire'}, 15957, 50000, 1, 'staff of fire')
shopModule:addBuyableItem({'staff of death'}, 15958, 50000, 1, 'staff of death')
shopModule:addBuyableItem({'zolstaharath staff'}, 16102, 1000000, 1, 'zolstaharath staff')
shopModule:addBuyableItem({'frizzaharath staff'}, 16106, 1000000, 1, 'frizzaharath staff')
shopModule:addBuyableItem({'vinozaharath staff'}, 16105, 1000000, 1, 'vinozaharath staff')
shopModule:addBuyableItem({'ahlazaharath staff'}, 16101, 5000000, 1, 'ahlazaharath staff')
shopModule:addBuyableItem({'master magician staff'}, 16099, 10000000, 1, 'master magician staff')

shopModule:addBuyableItem({'master ball'}, 15982, 5000, 1, 'master ball')
shopModule:addBuyableItem({'rocket backpack'}, 15913, 5000, 1, 'rocket backpack')
shopModule:addBuyableItem({'frost backpack'}, 16040, 5000, 1, 'frost backpack')
shopModule:addBuyableItem({'vampiric crest'}, 9955, 2500000, 1, 'vampiric crest')


npcHandler:setMessage(MESSAGE_GREET, "Greetings |PLAYERNAME|. Will you help me? If you do, I sell runes, potions and wands-rods! Just say ({menu potions} - {menu runes} - {menu super runes}). And say {trade} and see what I am selling.")
shopModule:addSellableItem({'energy soil', 'energysoil'}, 8303, 30000, 'energy soil')
shopModule:addSellableItem({'gold ingot', 'goldingot'}, 9971, 200000, 'gold ingot')

keywordHandler:addKeyword({'menu potions'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I sell potions ({bp hp} - backpack of health potions), ({bp mp} - backpack of mana potions), ({bp shp} - backpack of strong health potions), ({bp smp} - backpack of strong mana potions), ({bp ghp} - backpack of great health potions), ({bp gmp} - backpack of great mana potions), ({bp gsp} - backpack of great spirit potions), ({bp uhp} - backpack of ultimate health potions), ({bp usp} - backpack of ultimate spirit potions).'})
keywordHandler:addKeyword({'menu runes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I sell runes ({bp uh} - backpack of ultimate ultimate healing), ({bp xlp} - backpack of explosion runes), ({bp sd} - backpack of sudden death runes), ({bp ih} - backpack of instense healing runes), ({bp avl} - backpack of avalanche runes), ({bp ssd} - backpack of great sd runes), ({bp sxpl} - backpack of great exp runes), ({bp savl} - backpack of great avl runes).'})

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	local items = {[1] = 2190, [2] = 2182, [5] = 2190, [6] = 2182}

	if(msgcontains(msg, 'first rod') or msgcontains(msg, 'first wand')) then
		if(isSorcerer(cid) or isDruid(cid)) then
			if(getPlayerStorageValue(cid, 30002) == -1) then
				selfSay('So you ask me for a {' .. getItemNameById(items[getPlayerVocation(cid)]) .. '} to begin your advanture?', cid)
				talkState[talkUser] = 1
			else
				selfSay('What? I have already gave you one {' .. getItemNameById(items[getPlayerVocation(cid)]) .. '}!', cid)
			end
		else
			selfSay('Sorry, you aren\'t a druid either a sorcerer.', cid)
		end
	elseif(msgcontains(msg, 'yes')) then
		if(talkState[talkUser] == 1) then
			doPlayerAddItem(cid, items[getPlayerVocation(cid)], 1)
			selfSay('Here you are young adept, take care yourself.', cid)
			setPlayerStorageValue(cid, 30002, 1)
		end
		talkState[talkUser] = 0
	elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser]) == TRUE) then
		selfSay('Ok then.', cid)
		talkState[talkUser] = 0
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
