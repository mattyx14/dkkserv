function onPrepareDeath(cid, lastHitKiler, mostDamageKiller)

    if getPlayerExperience(cid) <= 4620 and getPlayerVocation(cid) ~= 0 then
        local rookTownID = 1
        local rookedGUID = getPlayerGUID(cid)
        local deathPos = getCreaturePosition(cid)

        for i = 1, 10 do
            local slotItem = getPlayerSlotItem(cid, i)
            if slotItem.itemid > 0 then
                doRemoveItem(slotItem.uid)
            end
        end

        doPlayerAddItem(cid, 2050, 1)
        doPlayerAddItem(cid, 2382, 1)
        doPlayerAddItem(cid, 1987, 1)
	local rookedCorpseFem = doCreateItemEx(3065)
        local rookedCorpseMale = doCreateItemEx(3058)
        if getPlayerSex(cid) == 0 then
            doPlayerAddItem(cid, 2651, 1)
            local pronoun = "She"
	    doSetItemSpecialDescription(rookedCorpseFem, "You recognize " .. getCreatureName(cid) .. ". " .. pronoun .. " was killed by " .. getCreatureName(mostDamageKiller) .. ".")
            doTileAddItemEx(deathPos, rookedCorpseFem)
        else
            doPlayerAddItem(cid, 2650, 1)
            local pronoun = "He"
	    doSetItemSpecialDescription(rookedCorpseMale, "You recognize " .. getCreatureName(cid) .. ". " .. pronoun .. " was killed by " .. getCreatureName(mostDamageKiller) .. ".")
		doTileAddItemEx(deathPos, rookedCorpseMale)
        end
        doPlayerSetVocation(cid, 0)
        doPlayerSetTown(cid, rookTownID)
        doTeleportThing(cid, getTownTemplePosition(rookTownID))

        db.executeQuery("UPDATE `players` SET `level` = '1',  `experience` = '0', `health` = '150', `healthmax` = '150', `mana` = '0', `manamax` = '0', `maglevel` = '0', `manaspent` = '0' WHERE `players`.`id` = '" .. rookedGUID .. "' LIMIT 1;")
        db.executeQuery("UPDATE `player_skills` SET `value` = '10',  `count` = '0' WHERE `player_skills`.`player_id` = '" .. rookedGUID .. "' LIMIT 7;")
 		for c = 1, 2097152 do 
 		doRemoveCondition(cid, c)
 		end
		doPlayerPopupFYI(cid, "Alas! Brave adventurer, you have met a sad fate.\nBut do not despair, for the gods will bring you back\ninto the world in exchange for a small sacrifice.\n\nSimply clock 'Ok' to resume your journeys in Tibia!\nYou has been Rooked")
		doRemoveCreature(cid)
        return FALSE
    else

        return TRUE

    end

end
