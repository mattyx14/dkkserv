-- Mana Rune - by MartyX. --
-- Feel free to edit! --
function onUse(cid, item, frompos, item2, topos)

    local level = getPlayerLevel(cid)
    local mlevel = getPlayerMagLevel(cid)
    
    -- Exhausted Settings --
    local exhausted_seconds = 1 -- How many seconds manarune will be unavailible to use. --
    local exhausted_storagevalue = 7520 -- Storage Value to store exhaust. It MUST be unused! --
    -- Exhausted Settings END --
    
    -- Mana Formula Settings --
    -- You can use "10" and "15" --
    local mana_minimum = 250
    local mana_maximum = 400
    -- Mana Formula Settings END --
    
    local mana_add = math.random(mana_minimum, mana_maximum)
    
        
	if(os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then -- Exhausted check. --
		if(isPlayer(item2.uid) == 1) then -- Entity is player? --
			doSendMagicEffect(frompos, CONST_ME_MAGIC_RED)
			doSendMagicEffect(topos, CONST_ME_MAGIC_GREEN)
			doSendAnimatedText(topos, mana_add, TEXTCOLOR_LIGHTBLUE)
			doPlayerAddMana(item2.uid, mana_add)
			setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)
			if item.type > 1 then -- We check the charges. --
				doChangeTypeItem(item.uid, item.type - 1)
			else
				doRemoveItem(item.uid, 1)
			end
		else
			doSendMagicEffect(frompos, CONST_ME_POFF)
			doPlayerSendCancel(cid, "Esta runa solo se puede usar en jugadores.")
	    end
	else
		doSendMagicEffect(frompos, CONST_ME_POFF)
		doPlayerSendCancel(cid, "You are exhausted.")
	end
    return 1
end