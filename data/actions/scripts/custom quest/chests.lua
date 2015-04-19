function onUse(cid, item, frompos, item2, topos)

--noobaquest
if item.uid == 5020 then
queststatus = getPlayerStorageValue(cid,5020)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Dragon Lance.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2414,1)
setPlayerStorageValue(cid,5020,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5021 then
queststatus = getPlayerStorageValue(cid,5021)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Vampire Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2534,1)
setPlayerStorageValue(cid,5021,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5022 then
queststatus = getPlayerStorageValue(cid,5022)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Demon Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2520,1)
setPlayerStorageValue(cid,5022,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5023 then
queststatus = getPlayerStorageValue(cid,5023)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Demon Helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2493,1)
setPlayerStorageValue(cid,5023,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5024 then
queststatus = getPlayerStorageValue(cid,5024)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Steel Boots.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2645,1)
setPlayerStorageValue(cid,5024,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5025 then
queststatus = getPlayerStorageValue(cid,5025)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Fire Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2432,1)
setPlayerStorageValue(cid,5025,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5026 then
queststatus = getPlayerStorageValue(cid,5026)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Golden Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2466,1)
setPlayerStorageValue(cid,5026,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

--bk quest
elseif item.uid == 5027 then
queststatus = getPlayerStorageValue(cid,5027)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Guardian Halberd.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2427,1)
setPlayerStorageValue(cid,5027,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5028 then
queststatus = getPlayerStorageValue(cid,5028)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Demon Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2520,1)
setPlayerStorageValue(cid,5028,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

--silver mace quest
elseif item.uid == 5029 then
queststatus = getPlayerStorageValue(cid,5029)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Platinum Amulet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2171,1)
setPlayerStorageValue(cid,5029,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

--crusader helmet
elseif item.uid == 5030 then
queststatus = getPlayerStorageValue(cid,5030)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Fire Sword.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2392,1)
setPlayerStorageValue(cid,5030,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

--banshee quest
elseif item.uid == 5031 then
queststatus = getPlayerStorageValue(cid,5031)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Knight Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2476,1)
setPlayerStorageValue(cid,5031,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5032 then
queststatus = getPlayerStorageValue(cid,5032)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Knight Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2430,1)
setPlayerStorageValue(cid,5032,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5033 then
queststatus = getPlayerStorageValue(cid,5033)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Crown Armor.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2487,1)
setPlayerStorageValue(cid,5033,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5034 then
queststatus = getPlayerStorageValue(cid,5034)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Crown Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2519,1)
setPlayerStorageValue(cid,5034,1)

else
doPlayerSendTextMessage(cid,22,"It is empty!")
end

elseif item.uid == 5035 then
queststatus = getPlayerStorageValue(cid,5035)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a 10K.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2152,100)
setPlayerStorageValue(cid,5035,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5036 then
queststatus = getPlayerStorageValue(cid,5036)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Ring of Healing.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2214,1)
setPlayerStorageValue(cid,5036,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5037 then
queststatus = getPlayerStorageValue(cid,5037)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Dwarfish Axe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2435,1)
setPlayerStorageValue(cid,5037,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

--behe quest
elseif item.uid == 5038 then
queststatus = getPlayerStorageValue(cid,5038)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a damaged steel helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,5924,1)
setPlayerStorageValue(cid,5038,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5039 then
queststatus = getPlayerStorageValue(cid,5039)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Power Ring.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2166,1)
setPlayerStorageValue(cid,5039,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5040 then
queststatus = getPlayerStorageValue(cid,5040)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Protection Amulet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2200,1)
setPlayerStorageValue(cid,5040,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5041 then
queststatus = getPlayerStorageValue(cid,5041)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a 5 Power Bolts.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2547,5)
setPlayerStorageValue(cid,5041,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5042 then
queststatus = getPlayerStorageValue(cid,5042)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a White Pearl.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2143,1)
setPlayerStorageValue(cid,5042,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5043 then
queststatus = getPlayerStorageValue(cid,5043)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Knight Legs.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2477,1)
setPlayerStorageValue(cid,5043,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5044 then
queststatus = getPlayerStorageValue(cid,5044)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Warrior Helmet.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2475,1)
setPlayerStorageValue(cid,5044,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5048 then
queststatus = getPlayerStorageValue(cid,5048)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Medusa Shield.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2536,1)
setPlayerStorageValue(cid,5048,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5049 then
queststatus = getPlayerStorageValue(cid,5049)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Blue Robe.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2656,1)
setPlayerStorageValue(cid,5049,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5050 then
queststatus = getPlayerStorageValue(cid,5050)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Skull Staff.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2436,1)
setPlayerStorageValue(cid,5050,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5051 then
queststatus = getPlayerStorageValue(cid,5051)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Bright Sword.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2407,1)
setPlayerStorageValue(cid,5051,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5056 then
queststatus = getPlayerStorageValue(cid,5056)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of Helmet Of The Ancient.")
doSendMagicEffect(topos,12)
if math.random(0,1) == 0 then 
	doPlayerAddItem(cid,2336,1)
else
	doPlayerAddItem(cid,2340,1)
end
setPlayerStorageValue(cid,5056,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5057 then
queststatus = getPlayerStorageValue(cid,5057)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of Helmet Of The Ancient.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2336,1)
setPlayerStorageValue(cid,5057,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5058 then
queststatus = getPlayerStorageValue(cid,5058)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of Helmet Of The Ancient.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2337,1)
setPlayerStorageValue(cid,5058,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end


elseif item.uid == 5059 then
queststatus = getPlayerStorageValue(cid,5059)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of Helmet Of The Ancient.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2338,1)
setPlayerStorageValue(cid,5059,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end


elseif item.uid == 5060 then
queststatus = getPlayerStorageValue(cid,5060)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of Helmet Of The Ancient.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2339,1)
setPlayerStorageValue(cid,5060,1)
if math.random(0,4) == 0 then 
	doPlayerAddItem(cid,2335,1)
else
	doPlayerAddItem(cid,2337,1)
end
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end


elseif item.uid == 5061 then
queststatus = getPlayerStorageValue(cid,5061)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of Helmet Of The Ancient.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2340,1)
setPlayerStorageValue(cid,5061,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end


elseif item.uid == 5062 then
queststatus = getPlayerStorageValue(cid,5062)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece of Helmet Of The Ancient.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2341,1)
setPlayerStorageValue(cid,5062,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5063 then
queststatus = getPlayerStorageValue(cid,5063)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a piece a Crystal Wand.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2184,1)
setPlayerStorageValue(cid,5063,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5064 then
queststatus = getPlayerStorageValue(cid,5064)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found 2x adori vita vis rune.")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,2268,2)
setPlayerStorageValue(cid,5064,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5067 then
queststatus = getPlayerStorageValue(cid,5067)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Rapier.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2384,1)
setPlayerStorageValue(cid,5067,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5068 then
queststatus = getPlayerStorageValue(cid,5068)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found Chain Armor.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2464,1)
setPlayerStorageValue(cid,5068,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5069 then
queststatus = getPlayerStorageValue(cid,5069)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found Brass Helmet and Present Box.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2460,1)
doPlayerAddItem(cid,2331,1)
setPlayerStorageValue(cid,5069,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5070 then
queststatus = getPlayerStorageValue(cid,5070)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found Fishing Rod.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2580,1)
setPlayerStorageValue(cid,5070,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5071 then
queststatus = getPlayerStorageValue(cid,5071)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found Carlin Sword.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2395,33)
setPlayerStorageValue(cid,5071,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5072 then
queststatus = getPlayerStorageValue(cid,5072)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Katana.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2412,1)
setPlayerStorageValue(cid,5072,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5073 then
queststatus = getPlayerStorageValue(cid,5073)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Warrior Helmet.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2475,1)
setPlayerStorageValue(cid,5073,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end


elseif item.uid == 5074 then
queststatus = getPlayerStorageValue(cid,5074)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Tower Shield.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2528,1)
setPlayerStorageValue(cid,5074,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end


elseif item.uid == 5075 then
queststatus = getPlayerStorageValue(cid,5075)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found an Elven Amulet.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2198,1)
setPlayerStorageValue(cid,5075,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end


elseif item.uid == 5076 then
queststatus = getPlayerStorageValue(cid,5076)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Dwarven Ring.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2213,1)
setPlayerStorageValue(cid,5076,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end


elseif item.uid == 5077 then
queststatus = getPlayerStorageValue(cid,5077)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a Knight Axe.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2430,1)
setPlayerStorageValue(cid,5077,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5081 then
queststatus = getPlayerStorageValue(cid,5081)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a crystal coin.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2160,1)
setPlayerStorageValue(cid,5081,15)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
elseif item.uid == 5079 then
queststatus = getPlayerStorageValue(cid,5079)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found 500 gold coins.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2152,5)
setPlayerStorageValue(cid,5079,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5080 then
queststatus = getPlayerStorageValue(cid,5080)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a boots of haste.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2195,1)
setPlayerStorageValue(cid,5080,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5082 then
queststatus = getPlayerStorageValue(cid,5082)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a giant sword.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2393,1)
setPlayerStorageValue(cid,5082,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5083 then
queststatus = getPlayerStorageValue(cid,5083)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a tower shield.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2528,1)
setPlayerStorageValue(cid,5083,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5084 then
queststatus = getPlayerStorageValue(cid,5084)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a stone skin amulet.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2197,5)
setPlayerStorageValue(cid,5084,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 5085 then
queststatus = getPlayerStorageValue(cid,5085)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a stealth ring.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2165,1)
setPlayerStorageValue(cid,5085,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 6000 then
queststatus = getPlayerStorageValue(cid,6000)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a plate legs.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2647,1)
setPlayerStorageValue(cid,6000,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 6003 then
queststatus = getPlayerStorageValue(cid,6003)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a plate armor.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,2463,1)
setPlayerStorageValue(cid,6003,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

elseif item.uid == 6007 then
queststatus = getPlayerStorageValue(cid,6007)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found Simon's favourite staff.")
doSendMagicEffect(topos,12)
doPlayerAddItem(cid,6107,1)
setPlayerStorageValue(cid,6007,1)

else
doPlayerSendTextMessage(cid,22,"It is empty.")
end


else
return 0
end
return 1
end



