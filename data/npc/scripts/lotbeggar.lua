local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 		end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink() 							npcHandler:onThink() 						end
function onPlayerEndTrade(cid)				npcHandler:onPlayerEndTrade(cid)			end
function onPlayerCloseChannel(cid)			npcHandler:onPlayerCloseChannel(cid)		end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addSellableItem({'war hammer'}, 2391, 12000, 'war hammer')
shopModule:addSellableItem({'giant sword'}, 2393, 20000, 'giant sword')
shopModule:addSellableItem({'dragon lance'}, 2414, 22000, 'dragon lance')
shopModule:addSellableItem({'silver mace'}, 2424, 12000, 'silver mace')
shopModule:addSellableItem({'guardian halberd'}, 2427, 12000, 'guardian halberd')
shopModule:addSellableItem({'light mace'}, 2437, 25000, 'light mace')
shopModule:addSellableItem({'ravagers axe'}, 2443, 22000, 'ravagers axe')
shopModule:addSellableItem({'hammer of wrath'}, 2444, 24000, 'hammer of wrath')
shopModule:addSellableItem({'tytan axe'}, 2447, 18000, 'tytan axe')
shopModule:addSellableItem({'heavy mace'}, 2452, 22000, 'heavy mace')
shopModule:addSellableItem({'war axe'}, 2454, 19000, 'war axe')
shopModule:addSellableItem({'relic sword'}, 7383, 25000, 'relic sword')
shopModule:addSellableItem({'mystic blade'}, 7384, 25000, 'mystic blade')
shopModule:addSellableItem({'mercenary sword'}, 7386, 28000, 'mercenary sword')
shopModule:addSellableItem({'diamond sceptre'}, 7387, 23000, 'diamond sceptre')
shopModule:addSellableItem({'vile axe'}, 7388, 25000, 'vile axe')
shopModule:addSellableItem({'heroic axe'}, 7389, 30000, 'heroic axe')
shopModule:addSellableItem({'justice seeker'}, 7390, 50000, 'justice seeker')
shopModule:addSellableItem({'orcish maul'}, 7392, 25000, 'orcish maul')
shopModule:addSellableItem({'dragon slayer'}, 7402, 20000, 'dragon slayer')
shopModule:addSellableItem({'berserker'}, 7403, 45000, 'berserker')
shopModule:addSellableItem({'havoc blade'}, 7405, 35000, 'havoc blade')
shopModule:addSellableItem({'haunted blade'}, 7407, 50000, 'haunted blade')
shopModule:addSellableItem({'abyss hammer'}, 7414, 45000, 'abyss hammer')
shopModule:addSellableItem({'cranial basher'}, 7415, 30000, 'cranial basher')
shopModule:addSellableItem({'nightmare blade'}, 7418, 35000, 'nightmare blade')
shopModule:addSellableItem({'blessed sceptre'}, 7429, 50000, 'blessed sceptre')
shopModule:addSellableItem({'royal axe'}, 7434, 50000, 'royal axe')
shopModule:addSellableItem({'noble axe'}, 7456, 35000, 'noble axe')
shopModule:addSellableItem({'hat of the mad'}, 2323, 25000, 'hat of the mad')
shopModule:addSellableItem({'helmet of the ancients'}, 2342, 27000, 'helmet of the ancients')
shopModule:addSellableItem({'golden armor'}, 2466, 35000, 'golden armor')
shopModule:addSellableItem({'crown armor'}, 2487, 25000, 'crown armor')
shopModule:addSellableItem({'crown legs'}, 2488, 20000, 'crown legs')
shopModule:addSellableItem({'dragon scale mail'}, 2492, 60000, 'dragon scale mail')
shopModule:addSellableItem({'royal helmet'}, 2498, 45000, 'royal helmet')
shopModule:addSellableItem({'amazon helmet'}, 2499, 25000, 'amazon helmet')
shopModule:addSellableItem({'amazon armor'}, 2500, 25000, 'amazon armor')
shopModule:addSellableItem({'ceremonial mask'}, 2501, 25000, 'ceremonial mask')
shopModule:addSellableItem({'elven armor'}, 2505, 15000, 'elven armor')
shopModule:addSellableItem({'dragon scale helmet'}, 2506, 50000, 'dragon scale helmet')
shopModule:addSellableItem({'blue robe'}, 2656, 35000, 'blue robe')
shopModule:addSellableItem({'magician hat'}, 2662, 55555, 'magician hat')
shopModule:addSellableItem({'blue legs'}, 7730, 35000, 'blue legs')
shopModule:addSellableItem({'terra mantle'}, 7884, 25000, 'terra mantle')
shopModule:addSellableItem({'terra legs'}, 7885, 25000, 'terra legs')
shopModule:addSellableItem({'terra boots'}, 7886, 35000, 'terra boots')
shopModule:addSellableItem({'magma boots'}, 7891, 35000, 'magma boots')
shopModule:addSellableItem({'glacier shoes'}, 7892, 30000, 'glacier shoes')
shopModule:addSellableItem({'lightning boots'}, 7893, 35000, 'lightning boots')
shopModule:addSellableItem({'magma legs'}, 7894, 35000, 'magma legs')
shopModule:addSellableItem({'lightning legs'}, 7895, 30000, 'lightning legs')
shopModule:addSellableItem({'glacier kilt'}, 7896, 35000, 'glacier kilt')
shopModule:addSellableItem({'glacier robe'}, 7897, 35000, 'glacier robe')
shopModule:addSellableItem({'lightning robe'}, 7898, 35000, 'lightning robe')
shopModule:addSellableItem({'magma coat'}, 7899, 35000, 'magma coat')
shopModule:addSellableItem({'magma monocle'}, 7900, 30000, 'magma monocle')
shopModule:addSellableItem({'lightning headband'}, 7901, 30000, 'lightning headband')
shopModule:addSellableItem({'glacier mask'}, 7900, 30000, 'glacier mask')
shopModule:addSellableItem({'terra hood'}, 7903, 30000, 'terra hood')
shopModule:addSellableItem({'zaoan armor'}, 11301, 15000, 'zaoan armor')
shopModule:addSellableItem({'zaoan helmet'}, 11302, 15000, 'zaoan helmet')
shopModule:addSellableItem({'zaoan shoes'}, 11303, 15000, 'zaoan shoes')
shopModule:addSellableItem({'zaoan legs'}, 11304, 15000, 'zaoan legs')
shopModule:addSellableItem({'drakinata'}, 11305, 35000, 'drakinata')
shopModule:addSellableItem({'sais'}, 11306, 35000, 'sais')
shopModule:addSellableItem({'zaoan sword'}, 11307, 3500, 'zaoan sword')
shopModule:addSellableItem({'drachaku'}, 11308, 35000, 'drachaku')
shopModule:addSellableItem({'zaoan halberd'}, 11323, 15000, 'zaoan halberd')

shopModule:addSellableItem({'sword'}, 2376, 40, 'sword')
shopModule:addSellableItem({'mace'}, 2398, 40, 'mace')
shopModule:addSellableItem({'giant smithhammer'}, 2321, 2400, 'giant smithhammer')
shopModule:addSellableItem({'two handed sword'}, 2377, 1200, 'two handed sword')
shopModule:addSellableItem({'titan axe'}, 7413, 25000, 'titan axe')
shopModule:addSellableItem({'bonebreaker'}, 7428, 15000, 'bonebreaker')
shopModule:addSellableItem({'battle axe'}, 2378, 1300, 'battle axe')
shopModule:addSellableItem({'halberd'}, 2381, 1200, 'halberd')
shopModule:addSellableItem({'spike sword'}, 2383, 1300, 'spike sword')
shopModule:addSellableItem({'double axe'}, 2387, 900, 'double axe')
shopModule:addSellableItem({'fire sword'}, 2392, 5000, 'fire sword')
shopModule:addSellableItem({'morning star'}, 2394, 1000, 'morning star')
shopModule:addSellableItem({'bright sword'}, 2407, 17000, 'bright sword')
shopModule:addSellableItem({'serpent sword'}, 2409, 1500, 'serpent sword')
shopModule:addSellableItem({'broad sword'}, 2413, 800, 'broad sword')
shopModule:addSellableItem({'battle hammer'}, 2417, 1200, 'battle hammer')
shopModule:addSellableItem({'clerical mace'}, 2423, 1400, 'clerical mace')
shopModule:addSellableItem({'obsidian lance'}, 2425, 4400, 'obsidian lance')
shopModule:addSellableItem({'naginata'}, 2426, 15000, 'naginata')
shopModule:addSellableItem({'barbarian axe'}, 2429, 2200, 'barbarian axe')
shopModule:addSellableItem({'knight axe'}, 2430, 5000, 'knight axe')
shopModule:addSellableItem({'fire axe'}, 2432, 17000, 'fire axe')
shopModule:addSellableItem({'dragon hammer'}, 2434, 5000, 'dragon hammer')
shopModule:addSellableItem({'dwarven axe'}, 2435, 4000, 'dwarven axe')
shopModule:addSellableItem({'skull staff'}, 2436, 15000, 'skull staff')
shopModule:addSellableItem({'epee'}, 2438, 10000, 'epee')
shopModule:addSellableItem({'daramanian waraxe'}, 2440, 12000, 'daramanian waraxe')
shopModule:addSellableItem({'crystal mace'}, 2445, 16000, 'crystal mace')
shopModule:addSellableItem({'pharaoh sword'}, 2446, 29000, 'pharaoh sword')
shopModule:addSellableItem({'djinn blade'}, 2451, 24000, 'djinn blade')
shopModule:addSellableItem({'lich staff'}, 3961, 20000, 'lich staff')
shopModule:addSellableItem({'beastslayer axe'}, 3962, 20000, 'beastslayer axe')
shopModule:addSellableItem({'sniper gloves'}, 5875, 5000, 'sniper gloves')
shopModule:addSellableItem({'brutetamers staff'}, 7379, 12000, 'brutetamers staff')
shopModule:addSellableItem({'headchopper'}, 7380, 18000, 'headchopper')
shopModule:addSellableItem({'crimson sword'}, 7385, 5000, 'crimson sword')
shopModule:addSellableItem({'assassin dagger'}, 7404, 25000, 'assassin dagger')
shopModule:addSellableItem({'wyvern fang'}, 7408, 10000, 'wyvern fang')
shopModule:addSellableItem({'imaginary staff'}, 7409, 25000, 'imaginary staff')
shopModule:addSellableItem({'lunar staff'}, 7424, 15000, 'lunar staff')
shopModule:addSellableItem({'mythril axe'}, 7455, 15000, 'mythril axe')
shopModule:addSellableItem({'platinum amulet'}, 2171, 5000, 'platinum amulet')
shopModule:addSellableItem({'steel helmet'}, 2457, 500, 'steel helmet')
shopModule:addSellableItem({'devil helmet'}, 2462, 7000, 'devil helmet')
shopModule:addSellableItem({'plate armor'}, 2463, 1400, 'plate armor')
shopModule:addSellableItem({'warrior helmet'}, 2475, 8000, 'warrior helmet')
shopModule:addSellableItem({'knight armor'}, 2476, 12000, 'knight armor')
shopModule:addSellableItem({'knight legs'}, 2477, 15000, 'knight legs')
shopModule:addSellableItem({'scale armor'}, 2483, 2500, 'scale armor')
shopModule:addSellableItem({'noble armor'}, 2486, 18000, 'noble armor')
shopModule:addSellableItem({'dark armor'}, 2489, 17000, 'dark armor')
shopModule:addSellableItem({'dark helmet'}, 2490, 700, 'dark helmet')
shopModule:addSellableItem({'crown helmet'}, 2491, 15000, 'crown helmet')
shopModule:addSellableItem({'crusader helmet'}, 2497, 17000, 'crusader helmet')
shopModule:addSellableItem({'elven legs'}, 2507, 16000, 'elven legs')
shopModule:addSellableItem({'traper boots'}, 2641, 15000, 'traper boots')
shopModule:addSellableItem({'steel boots'}, 2645, 35000, 'steel boots')
shopModule:addSellableItem({'plate legs'}, 2647, 2500, 'plate legs')
shopModule:addSellableItem({'rangers cloak'}, 2660, 5000, 'rangers cloak')
shopModule:addSellableItem({'leopard armor'}, 3968, 7500, 'leopard armor')
shopModule:addSellableItem({'beholder helmet'}, 3972, 35000, 'beholder helmet')
shopModule:addSellableItem({'pirate boots'}, 5462, 8000, 'pirate boots')
shopModule:addSellableItem({'focus cape'}, 8871, 25000, 'focus cape')
shopModule:addSellableItem({'skull helmet'}, 5741, 17500, 'skull helmet')
shopModule:addSellableItem({'magicians robe'}, 8819, 2000, 'magicians robe')
shopModule:addSellableItem({'mage hat'}, 8820, 1000, 'mage hat')

shopModule:addSellableItem({'magic longsword'}, 2390, 40000, 'magic longsword')
shopModule:addSellableItem({'ice rapier'}, 2396, 2500, 'ice rapier')
shopModule:addSellableItem({'magic sword'}, 2400, 19000, 'magic sword')
shopModule:addSellableItem({'warlord sword'}, 2408, 35000, 'warlord sword')
shopModule:addSellableItem({'great axe'}, 2415, 40000, 'great axe')
shopModule:addSellableItem({'thunder hammer'}, 2421, 19000, 'thunder hammer')
shopModule:addSellableItem({'stonecutter axe'}, 2431, 19000, 'stonecutter axe')
shopModule:addSellableItem({'arcane staff'}, 2453, 40000, 'arcane staff')
shopModule:addSellableItem({'avenger'}, 6528, 29000, 'avenger')
shopModule:addSellableItem({'ruthless axe'}, 6553, 75000, 'ruthless axe')
shopModule:addSellableItem({'demonrage sword'}, 7382, 12000, 'demonrage sword')
shopModule:addSellableItem({'blade the legend'}, 7391, 50000, 'blade the legend')
shopModule:addSellableItem({'jade hammer'}, 7422, 29000, 'jade hammer')
shopModule:addSellableItem({'skullcrusher'}, 7423, 50000, 'skullcrusher')
shopModule:addSellableItem({'demonbone'}, 7431, 13000, 'demonbone')
shopModule:addSellableItem({'glorious axe'}, 7454, 29000, 'glorious axe')
shopModule:addSellableItem({'hellforged axe'}, 8924, 24000, 'hellforged axe')
shopModule:addSellableItem({'solar axe'}, 8925, 45000, 'solar axe')
shopModule:addSellableItem({'demonwing axe'}, 8926, 15000, 'demonwing axe')
shopModule:addSellableItem({'dark trinity mace'}, 8927, 80000, 'dark trinity mace')
shopModule:addSellableItem({'obsidian truncheon'}, 8928, 45000, 'obsidian truncheon')
shopModule:addSellableItem({'tomper'}, 8929, 19000, 'stomper')
shopModule:addSellableItem({'emerald sword'}, 8930, 24000, 'emerald sword')
shopModule:addSellableItem({'flame blade'}, 8931, 45000, 'flame blade')
shopModule:addSellableItem({'dragon scale legs'}, 2469, 8000, 'dragon scale legs')
shopModule:addSellableItem({'golden legs'}, 2470, 7000, 'golden legs')
shopModule:addSellableItem({'golden helmet'}, 2471, 85000, 'golden helmet')
shopModule:addSellableItem({'magic plate armor'}, 2472, 10000, 'magic plate armor')
shopModule:addSellableItem({'winged helmet'}, 2474, 8000, 'winged helmet')
shopModule:addSellableItem({'demon helmet'}, 2493, 18000, 'demon helmet')
shopModule:addSellableItem({'demon armor'}, 2494, 45000, 'demon armor')
shopModule:addSellableItem({'demon legs'}, 2495, 45000, 'demon legs')
shopModule:addSellableItem({'demon shield'}, 2520, 45000, 'demon shield')
shopModule:addSellableItem({'horned helmet'}, 2496, 45000, 'horned helmet')
shopModule:addSellableItem({'golden boots'}, 2646, 45000, 'golden boots')
shopModule:addSellableItem({'ferumbras hat'}, 5903, 45000, 'ferumbras hat')
shopModule:addSellableItem({'yalahari armor'}, 9776, 35000, 'yalahari armor')
shopModule:addSellableItem({'yalahari leg piece'}, 9777, 35000, 'yalahari leg piece')
shopModule:addSellableItem({'yalahari mask'}, 9778, 35000, 'yalahari mask')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

