function onStepIn(cid, item, pos)


creaturepos = {x=1087, y=674, z=9, stackpos=1}

		if item.actionid == 39906 then		
		doSummonCreature("Liquid Flame",creaturepos)
		doSendAnimatedText(getPlayerPosition(cid), "Fight", 198)
		else
		doPlayerSendCancel(cid,"Sorry, not possible.")	
		end

return 1
end

