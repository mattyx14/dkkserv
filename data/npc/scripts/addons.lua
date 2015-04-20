local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 		end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink() 							npcHandler:onThink() 						end
function onPlayerEndTrade(cid)				npcHandler:onPlayerEndTrade(cid)			end
function onPlayerCloseChannel(cid)			npcHandler:onPlayerCloseChannel(cid)		end

npcHandler:setMessage(MESSAGE_GREET, "Greetings |PLAYERNAME|. Will you help me? If you do, I'll reward you with nice addons! Just say {addons} or {help} if you don't know what to do.")
function playerBuyAddonNPC(cid, message, keywords, parameters, node)
	if(not npcHandler:isFocused(cid)) then
			return false
	end

	if (parameters.confirm ~= true) and (parameters.decline ~= true) then
		if(getPlayerPremiumDays(cid) == 0) and (parameters.premium == true) then
			npcHandler:say('Sorry, but this addon is only for premium players!', cid)
			npcHandler:resetNpc()

			return true
		end

		if (getPlayerStorageValue(cid, parameters.storageID) ~= -1) then
			npcHandler:say('You already have this addon!', cid)
			npcHandler:resetNpc()

			return true
		end

		local itemsTable = parameters.items
		local items_list = ''

		if table.maxn(itemsTable) > 0 then
			for i = 1, table.maxn(itemsTable) do
				local item = itemsTable[i]
				items_list = items_list .. item[2] .. ' ' .. getItemNameById(item[1])
				if i ~= table.maxn(itemsTable) then
					items_list = items_list .. ', '
				end
			end
		end

		local text = ''
		if (parameters.cost > 0) and table.maxn(parameters.items) then
			text = items_list .. ' and ' .. parameters.cost .. ' gp'
		elseif (parameters.cost > 0) then
			text = parameters.cost .. ' gp'
		elseif table.maxn(parameters.items) then
			text = items_list
		end

		npcHandler:say('Did you bring me ' .. text .. ' for ' .. keywords[1] .. '?', cid)
		return true
	elseif (parameters.confirm == true) then
		local addonNode = node:getParent()
		local addoninfo = addonNode:getParameters()
		local items_number = 0
		if table.maxn(addoninfo.items) > 0 then
			for i = 1, table.maxn(addoninfo.items) do
				local item = addoninfo.items[i]
				if (getPlayerItemCount(cid,item[1]) >= item[2]) then
					items_number = items_number + 1
				end
			end
		end

		if(getPlayerMoney(cid) >= addoninfo.cost) and (items_number == table.maxn(addoninfo.items)) then
			doPlayerRemoveMoney(cid, addoninfo.cost)
			if table.maxn(addoninfo.items) > 0 then
				for i = 1, table.maxn(addoninfo.items) do
					local item = addoninfo.items[i]
						doPlayerRemoveItem(cid,item[1],item[2])
					end
				end

				doPlayerAddOutfit(cid, addoninfo.outfit_male, addoninfo.addon)
				doPlayerAddOutfit(cid, addoninfo.outfit_female, addoninfo.addon)
				setPlayerStorageValue(cid,addoninfo.storageID,1)
				npcHandler:say('Here you are.', cid)
		else
			npcHandler:say('You do not have needed items or cash!', cid)
		end

		npcHandler:resetNpc()
		return true
	elseif (parameters.decline == true) then
		npcHandler:say('Not interested? Maybe other addon?', cid)
		npcHandler:resetNpc()

		return true
	end

	return false
end

local noNode = KeywordNode:new({'no'}, playerBuyAddonNPC, {decline = true})
local yesNode = KeywordNode:new({'yes'}, playerBuyAddonNPC, {confirm = true})

-- citizen (FIRST)
-- // List: minotaur leathers 100, scorpion tail 10, polar bear paw 10 and crab pincers 10.
	local outfit_node = keywordHandler:addKeyword({'first citizen addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5878,100}, {10568,10}, {10567,10}, {11189,10}
		}, outfit_female = 136, outfit_male = 128, addon = 1, storageID = 20050}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: chicken feather 100, honeycomb 50, legion helmet and terrorbird beak 1.
	local outfit_node = keywordHandler:addKeyword({'second citizen addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5890,100}, {5902,50}, {2480,1}, {11190,1}
		}, outfit_female = 136, outfit_male = 128, addon = 2, storageID = 20051}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- hunter (FIRST)
-- // List: elane's crossbow 1, lizard leather 100, red dragon leather 100, enchanted chicken wing 5, 
-- pieces of royal steel 1, piece of draconian steel 1 and piece of hell steel 1.
	local outfit_node = keywordHandler:addKeyword({'first hunter addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5947,1}, {5876,100}, {5948,100}, {5891,5}, 
			{5887,1}, {5889,1}, {5888,1}
		}, outfit_female = 137, outfit_male = 129, addon = 1, storageID = 20052}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: sniper gloves 1 and sniper arrow 250.
	local outfit_node = keywordHandler:addKeyword({'second hunter addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5875,1}, {7364, 250}
		}, outfit_female = 137, outfit_male = 129, addon = 2, storageID = 20053}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- gladiator (FIRST)
-- // List: iron ore 100, huge chunk of crude iron, gladiator armor 5 and gladiator legs 10.
	local outfit_node = keywordHandler:addKeyword({'first gladiator addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5880,100}, {5892,1}, {2476,5}, {2477,10}
		}, outfit_female = 139, outfit_male = 131, addon = 1, storageID = 20054}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: perfect behemoth fang 100, damaged steel helmet 1, warrior's sweat 1, piece of royal steel 1 and honeycomb 20.
	local outfit_node = keywordHandler:addKeyword({'second gladiator addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5893,100}, {5924,1}, {5885,1}, {5887,1}, {5902,20}
		}, outfit_female = 139, outfit_male = 131, addon = 2, storageID = 20055}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- magician (FIRST)
-- // List: all wand & rods cipbia 8.61, magic sulphur 10, ankh 20 and soul stone 1.
	local outfit_node = keywordHandler:addKeyword({'first magician addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{2182,1}, {2186,1}, {2185,1}, {2181,1}, {2183,1}, {2190,1}, {2191,1}, {2188,1}, {2189,1}, {2187,1}, {5904,10}, {2193,20}, {5809,1}
		}, outfit_female = 138, outfit_male = 130, addon = 1, storageID = 20056}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: ferumbra's hat 1, queen's sceptre 1 and king's sceptre 1.
	local outfit_node = keywordHandler:addKeyword({'second magician addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5903,1}, {7410,1}, {2184,1}
		}, outfit_female = 138, outfit_male = 130, addon = 2, storageID = 20057}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- summoner (FIRST)
-- // List: winning lottery ticket 1, mermaid comb 1 and soul orb 25.
	local outfit_node = keywordHandler:addKeyword({'first summoner addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5958,1}, {5945,1}, {5944,25}
		}, outfit_female = 141, outfit_male = 133, addon = 1, storageID = 20058}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: bat wing 70, red piece of cloth 20, ape fur 10, holy orchid 50, spool of yarn 10, lizard scale 50, red dragon scale 50, 
--			magic sulphur 20 and vampire dust 20.
	local outfit_node = keywordHandler:addKeyword({'second summoner addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5894,70}, {5911,20}, {5883,10}, {5922,50}, {5886,10}, {5881,50}, {5882,50}, {5904,20}, {5905,20}
		}, outfit_female = 141, outfit_male = 133, addon = 2, storageID = 20059}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- barbarian (FIRST)
-- // List: fighting spirit 1, warrior's sweat 1, green piece of cloth 50, red piece of cloth 50 and spool of yarn 10.
	local outfit_node = keywordHandler:addKeyword({'first barbarian addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5884,1}, {5885,1}, {5910,50}, {5911,50}, {5886,10}
		}, outfit_female = 147, outfit_male = 143, addon = 1, storageID = 20060}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: iron ore 100, huge chunk of crude iron 1, perfect behemoth fang 50 and lizard leather 50.
	local outfit_node = keywordHandler:addKeyword({'second barbarian addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5880,100}, {5892,1}, {5893,50}, {5876,50}
		},
		outfit_female = 147, outfit_male = 143, addon = 2, storageID = 20061}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- wolf hunter (FIRST)
-- // List: bear paw 50, wolf paw 50 and polar bear paw 15.
	local outfit_node = keywordHandler:addKeyword({'first wolf hunter addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5896,50}, {5897,50}, {10567, 15}
		}, outfit_female = 148, outfit_male = 144, addon = 1, storageID = 20062}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: demon dust 100, waterhose 1 and ceiron's wolf tooth chain 1.
	local outfit_node = keywordHandler:addKeyword({'second wolf hunter addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5906,100}, {5939,1}, {5940,1}
		}, outfit_female = 148, outfit_male = 144, addon = 2, storageID = 20063}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- nobleman (FIRST)
-- // List: 15 Crystal Coints
	local outfit_node = keywordHandler:addKeyword({'first noble addon'}, playerBuyAddonNPC, {premium = true, cost = 150000, 
		items = {}, 
		outfit_female = 140, outfit_male = 132, addon = 1, storageID = 20064}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: 30 crystal Coints
	local outfit_node = keywordHandler:addKeyword({'second noble addon'}, playerBuyAddonNPC, {premium = true, cost = 300000, 
		items = {}, 
		outfit_female = 140, outfit_male = 132, addon = 2, storageID = 20065}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- oriental (FIRST)
-- // List: mermaid comb 1 and soul orb 50.
	local outfit_node = keywordHandler:addKeyword({'first oriental addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5945,1}, {5944,50}
		}, outfit_female = 150, outfit_male = 146, addon = 1, storageID = 20066}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: ape fur 50, fish fin 100, enchanted chicken wing 10 and blue piece of cloth 50.
	local outfit_node = keywordHandler:addKeyword({'second oriental addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5883,50}, {5895,100}, {5891,10}, {5912,50}
		}, outfit_female = 150, outfit_male = 146, addon = 2, storageID = 20067}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- warrior (FIRST)
-- // List: hardened bone 100, turtle shell 100, fighting spirit 5 and dragon claw 5.
	local outfit_node = keywordHandler:addKeyword({'first warrior addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5925,100}, {5899,100}, {5884,5}, {5919,5}
		}, outfit_female = 142, outfit_male = 134, addon = 1, storageID = 20068}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: iron ore 100, piece of royal steel 2 and warrior helmet 10.
	local outfit_node = keywordHandler:addKeyword({'second warrior addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5880,100}, {5887,2}, {2475,10}
		}, outfit_female = 142, outfit_male = 134, addon = 2, storageID = 20069}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- wizard (FIRST)
-- // List: medusa shield 10, dragon scale mail 5, crown legs 3, golden legs 1, skull staff 1 and ring of the sky 2.
	local outfit_node = keywordHandler:addKeyword({'first wizard addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{2536,6}, {2492,5}, {2488,3}, {2470,1}, {2123,1}, {2436,2}
		}, outfit_female = 149, outfit_male = 145, addon = 1, storageID = 20070}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: holy orchid 25 and black skull 5.
	local outfit_node = keywordHandler:addKeyword({'second wizard addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5922,25}, {9969, 5}
		}, outfit_female = 149, outfit_male = 145, addon = 2, storageID = 20071}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- assassin (FIRST)
-- // List: mercenary sword 4, bloody edge 3, dreaded cleaver 2, assassin star 350 and spool of yarn 10.
	local outfit_node = keywordHandler:addKeyword({'first assassin addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{7386,4}, {7416,3}, {7419,2}, {7368,350}, {5886,10}
		}, outfit_female = 156, outfit_male = 152, addon = 1, storageID = 20072}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: norse ring 1, behemoth claw and hydra egg 15.
	local outfit_node = keywordHandler:addKeyword({'second assassin addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5804,1}, {5930,2}, {4850,15}
		}, outfit_female = 156, outfit_male = 152, addon = 2, storageID = 20073}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- beggar (FIRST)
-- // List: minotaur leather 50, heaven blossom 30, brown piece of cloth 20 and bat wing 10.
	local outfit_node = keywordHandler:addKeyword({'first beggar addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5878,50}, {5921,30}, {5913,20}, {5894,10}
		}, outfit_female = 157, outfit_male = 153, addon = 1, storageID = 20074}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: ape fur 50, crystal coin 50 and Simon the Beggar's favorite staff 1.
	local outfit_node = keywordHandler:addKeyword({'second beggar addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5883,50}, {2160,50}, {6107,1}
		}, outfit_female = 157, outfit_male = 153, addon = 2, storageID = 20075}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- pirate (FIRST)
-- // List: eye patch 50, peg leg 50 and hook 100.
	local outfit_node = keywordHandler:addKeyword({'first pirate addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{6098,50}, {6126,100}, {6097,100}
		}, outfit_female = 155, outfit_male = 151, addon = 1, storageID = 20076}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: ron the ripper's sabre 1, deadeye devious' eye patch 1, lethal lissy's shirt 1 and brutus bloodbeard's hat 1.
	local outfit_node = keywordHandler:addKeyword({'second pirate addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{6101,1}, {6102,1}, {6100,1}, {6099,1}
		}, outfit_female = 155, outfit_male = 151, addon = 2, storageID = 20077}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- shaman (FIRST)
-- // List: pirate voodoo doll 5, voodoo doll 5 and mandrake 1.
	local outfit_node = keywordHandler:addKeyword({'first shaman addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5810,5}, {3955,5}, {5015,1}
		}, outfit_female = 158, outfit_male = 154, addon = 1, storageID = 20078}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: banana staff 5 and tribal mask 5.
	local outfit_node = keywordHandler:addKeyword({'second shaman addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{3966,5}, {3967,5}
		}, outfit_female = 158, outfit_male = 154, addon = 2, storageID = 20079}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- norse (FIRST)
-- // List: shard 10, fur cape 1 and ice rapier 20.
	local outfit_node = keywordHandler:addKeyword({'first norse addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{7290,10}, {7458,1}, {2396,20}
		}, outfit_female = 252, outfit_male = 251, addon = 1, storageID = 20080}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: shard 20, earmuffs 1 and ice rapier 30.
	local outfit_node = keywordHandler:addKeyword({'second norse addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{7290,20}, {7459,1}, {2396,30}
		}, outfit_female = 252, outfit_male = 251, addon = 2, storageID = 20081}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- jester (FIRST)
-- // List: All piece of clot x5, jester staff 1, bright sword 2, fire axe 2 and skull staff 2.
	local outfit_node = keywordHandler:addKeyword({'first jester addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5912,5}, {7958,1}, {5913,5}, {5914,5}, {5909,5}, {2407,2}, {2432,1}, {2436,1}
		}, outfit_female = 270, outfit_male = 273, addon = 1, storageID = 20082}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: All piece of clot x10, jester hat 1 and flower wreath 1.
	local outfit_node = keywordHandler:addKeyword({'second jester addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5912,20}, {7957,1}, {5910,10}, {5911,10}, 	{9927,1}
		}, outfit_female = 270, outfit_male = 273, addon = 2, storageID = 20083}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- demonhunter (FIRST)
-- // List: vampire dust 50, demon dust 100, demon horn 50, demonic essence 50 and talon 200.
	local outfit_node = keywordHandler:addKeyword({'first demonhunter addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5905,50}, {5906,100}, {5954,50}, {6500,50}, {2151,200}
		}, outfit_female = 288, outfit_male = 289, addon = 1, storageID = 20084}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: demon dust 150, demonic essence 200 and talon 400.
	local outfit_node = keywordHandler:addKeyword({'second demonhunter addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{5906,150}, {6500,200}, {2151,250}
		}, outfit_female = 288, outfit_male = 289, addon = 2, storageID = 20085}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- nightmare (FIRST)
-- // List: crown legs 10, steel helmet 15, talon 100, iron ore 150 and green piece of cloth 50.
	local outfit_node = keywordHandler:addKeyword({'first nightmare addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{6500,10}, {2457,15}, {2151,100}, {5880,150}, {5910,50}
		}, outfit_female = 269, outfit_male = 268, addon = 1, storageID = 20086}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: demonic essence 1500, dragon lance 15, demon shield 15 and talon 150.
	local outfit_node = keywordHandler:addKeyword({'second nightmare addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{6500,1500}, {2414,15}, {2520,15}, {2151,150}
		}, outfit_female = 269, outfit_male = 268, addon = 2, storageID = 20087}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- brotherhood (FIRST)
-- // List: gladiator legs 15, steel helmet 20, talon 100, iron ore 150 and green piece of cloth 50.
	local outfit_node = keywordHandler:addKeyword({'first brotherhood addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{6500,15}, {2477,20}, {2151,100}, {5880,150}, {5910,50}
		}, outfit_female = 279, outfit_male = 278, addon = 1, storageID = 20088}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: demonic essence 1500, crown helmet 20, demon shield 10 and talon 200.
	local outfit_node = keywordHandler:addKeyword({'second brotherhood addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{6500,1500}, {2491,20}, {2520,10}, {2151,200}
		}, outfit_female = 279, outfit_male = 278, addon = 2, storageID = 20089}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- yalaharian (FIRST)
-- // List: vampiric crest 3 and might ring 20.
	local outfit_node = keywordHandler:addKeyword({'first yalaharian addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{9955,3}, {2164, 20}
		}, outfit_female = 324, outfit_male = 325, addon = 1, storageID = 20090}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: vampiric crest 5 and stone skin amulet 25.
	local outfit_node = keywordHandler:addKeyword({'second yalaharian addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{9955,5}, {2197,25}
		}, outfit_female = 324, outfit_male = 325, addon = 2, storageID = 20091}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- warmaster (FIRST)
-- // List: tome of knowledge 5 and tribal crest 10.
	local outfit_node = keywordHandler:addKeyword({'first warmaster addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{11134,5}, {11115,10}
		}, outfit_female = 335, outfit_male = 336, addon = 1, storageID = 30111}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: tome of knowledge 5 and serpent crest 10.
	local outfit_node = keywordHandler:addKeyword({'second warmaster addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{9955,5}, {11116,10}
		}, outfit_female = 335, outfit_male = 336, addon = 2, storageID = 30112}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- Elementalist (FIRST)
	local outfit_node = keywordHandler:addKeyword({'first elementalist addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{8473,500}, {8472,500}, {9968,100}, {9967,100}, {9966,100}
		}, outfit_female = 433, outfit_male = 432, addon = 1, storageID = 30113}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
	local outfit_node = keywordHandler:addKeyword({'second elementalist addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{8473,500}, {8472,500}, {9968,200}, {9967,200}, {9966,200}
		}, outfit_female = 433, outfit_male = 432, addon = 2, storageID = 30114}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- Afflicted (FIRST)
	local outfit_node = keywordHandler:addKeyword({'first afflicted addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{13533,1}, {13534,1}, {13535,1}, {13536,1}, {13537,1}, {13538,1}
		}, outfit_female = 431, outfit_male = 430, addon = 1, storageID = 30115}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
	local outfit_node = keywordHandler:addKeyword({'second afflicted addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{13750,1}, {13751,1}
		}, outfit_female = 431, outfit_male = 430, addon = 2, storageID = 30116}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- Wayfarer (FIRST)
-- // List: tome of old cape 1.
	local outfit_node = keywordHandler:addKeyword({'first wayfarer addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{12657,1}
		}, outfit_female = 366, outfit_male = 367, addon = 1, storageID = 30117}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)
-- SECOND
-- // List: tome of sedge hat 1.
	local outfit_node = keywordHandler:addKeyword({'second wayfarer addon'}, playerBuyAddonNPC, {premium = true, cost = 0, 
		items = {
			{12656,1}
		}, outfit_female = 366, outfit_male = 367, addon = 2, storageID = 30118}) outfit_node:addChildKeywordNode(yesNode) outfit_node:addChildKeywordNode(noNode)

-- Deepling (FIST)
-- // List:
-- SECOND
-- // List:

-- Insectoid (FIST)
-- // List:
-- SECOND
-- // List:

-- Centaur (FIST)
-- // List:
-- SECOND
-- // List:

keywordHandler:addKeyword({'addons'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can give you citizen, hunter, gladiator, magician, norse (for nobleman and noblewoman), summoner, warrior, barbarian, wolf hunter, wizard, oriental, pirate, assassin, beggar, shaman, nightmare, jester, brotherhood, yalaharian, wayfarer, afflicted, elementalist and warmaster addons.'})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'To buy the first addon say \'first NAME addon\', for the second addon say \'second NAME addon\'.'})
npcHandler:addModule(FocusModule:new())