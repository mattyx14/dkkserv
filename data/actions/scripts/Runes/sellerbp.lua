local suddendeath = 2268
local ultimatehealing = 2273
local intensehealing = 2265
local greatfireball = 2304

local explosion = 2313
local heavymagicmissle = 2311
local avalanche = 2274
local blank = 2260

local healthpotion = 7618
local stronthealthpotion = 7588
local greathealthpotion = 7591
local ultimatehealthpotion = 8377

local manapotion = 7620
local strongmanapotion = 7589
local greatmanapotion = 7590
local greatspiritpotion = 8376

local greatsd = 2263
local greatfrigo = 2275
local greatterra = 2291
local greatholy = 2299

local greatexplosion = 2312

local bp, rune, charges
function onUse(cid, item, frompos, item2, topos)
	if item.itemid == 1512 then

-- Normal Rune - by MartyX. --
		if item.actionid == 10550 then
			if doPlayerRemoveMoney(cid, 5000) == 1 then 
				bp = doPlayerAddItem(cid, 5926, 1)
				rune = suddendeath
				charges = 3
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end

		elseif item.actionid == 10551 then
			if doPlayerRemoveMoney(cid, 5000) == 1 then
				bp = doPlayerAddItem(cid, 2002, 1)
				rune = ultimatehealing
				charges = 3
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end

		elseif item.actionid== 10552 then
			if doPlayerRemoveMoney(cid, 4000) == 1 then
				bp = doPlayerAddItem(cid, 2001, 1)
				rune = explosion
				charges = 4
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end

		elseif item.actionid == 10553 then
			if doPlayerRemoveMoney(cid, 5000) == 1 then
				bp = doPlayerAddItem(cid, 2003, 1)
				rune = intensehealing
				charges = 3
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end

		elseif item.actionid == 10554 then
			if doPlayerRemoveMoney(cid, 5000) == 1 then
				bp = doPlayerAddItem(cid, 2000, 1)
				rune = heavymagicmissle
				charges = 6
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end

		elseif item.actionid == 10555 then
			if doPlayerRemoveMoney(cid, 5000) == 1 then
				bp = doPlayerAddItem(cid, 5949, 1)
				rune = avalanche
				charges = 3
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end
		elseif item.actionid == 10556 then
			if doPlayerRemoveMoney(cid, 1000) == 1 then
				bp = doPlayerAddItem(cid, 3940, 1)
				rune = blank
				charges = 1
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end

-- Healt Potions - by MartyX. --
		elseif item.actionid == 10557 then
			if doPlayerRemoveMoney(cid, 1000) == 1 then
				bp = doPlayerAddItem(cid, 5950, 1)
				rune = healthpotion
				charges = 1
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end
		elseif item.actionid == 10558 then
			if doPlayerRemoveMoney(cid, 2000) == 1 then
				bp = doPlayerAddItem(cid, 5950, 1)
				rune = stronthealthpotion
				charges = 1
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end
		elseif item.actionid == 10559 then
			if doPlayerRemoveMoney(cid, 4000) == 1 then
				bp = doPlayerAddItem(cid, 5950, 1)
				rune = greathealthpotion
				charges = 1
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end
		elseif item.actionid == 10560 then
			if doPlayerRemoveMoney(cid, 6000) == 1 then
				bp = doPlayerAddItem(cid, 5950, 1)
				rune = ultimatehealthpotion
				charges = 1
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end

-- Mana Potions - by MartyX. --
		elseif item.actionid == 10561 then
			if doPlayerRemoveMoney(cid, 1000) == 1 then
				bp = doPlayerAddItem(cid, 7343, 1)
				rune = manapotion
				charges = 1
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end
		elseif item.actionid == 10562 then
			if doPlayerRemoveMoney(cid, 2000) == 1 then
				bp = doPlayerAddItem(cid, 7343, 1)
				rune = strongmanapotion
				charges = 1
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end
		elseif item.actionid == 10563 then
			if doPlayerRemoveMoney(cid, 4000) == 1 then
				bp = doPlayerAddItem(cid, 7343, 1)
				rune = greatmanapotion
				charges = 1
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end
		elseif item.actionid == 10564 then
			if doPlayerRemoveMoney(cid, 6000) == 1 then
				bp = doPlayerAddItem(cid, 7343, 1)
				rune = greatspiritpotion
				charges = 1
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end

-- Super Rune - by MartyX. --
		elseif item.actionid == 10565 then
			if doPlayerRemoveMoney(cid, 7000) == 1 then
				bp = doPlayerAddItem(cid, 5926, 1)
				rune = greatsd
				charges = 3
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end
		elseif item.actionid == 10566 then
			if doPlayerRemoveMoney(cid, 7000) == 1 then
				bp = doPlayerAddItem(cid, 5949, 1)
				rune = greatfrigo
				charges = 3
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end
		elseif item.actionid == 10567 then
			if doPlayerRemoveMoney(cid, 7000) == 1 then
				bp = doPlayerAddItem(cid, 7342, 1)
				rune = greatterra
				charges = 3
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end
		elseif item.actionid == 10568 then
			if doPlayerRemoveMoney(cid, 7000) == 1 then
				bp = doPlayerAddItem(cid, 2004, 1)
				rune = greatholy
				charges = 3
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end
		elseif item.actionid == 10569 then
			if doPlayerRemoveMoney(cid, 7000) == 1 then
				bp = doPlayerAddItem(cid, 2001, 1)
				rune = greatexplosion
				charges = 3
			else
				doPlayerSendTextMessage(cid, 22, "You don\'t have enough money.")
			end
-- by MartyX. --
		end
 
		if rune then
			for i = 1, 20 do
				doAddContainerItem(bp, rune, charges)
			end
			bp, rune, charges = nil
		end
	elseif item.itemid == 1513 then
		doTransformItem(item.uid, item.itemid + 1)
	end
		return TRUE
end