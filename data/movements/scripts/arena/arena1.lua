function onStepIn(cid, item, pos)


creaturepos = {x=1092, y=699, z=9, stackpos=1}

		if item.actionid == 39901 then		
		doSummonCreature("countess sorrow",creaturepos)
		doSendAnimatedText(getPlayerPosition(cid), "Fight", 198)
		else
		doPlayerSendCancel(cid,"Sorry, not possible.")	
		end

return 1
end

