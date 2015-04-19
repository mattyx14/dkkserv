function onStepIn(cid, item, pos)


creaturepos = {x=1054, y=674, z=9, stackpos=1}

		if item.actionid == 39907 then		
		doSummonCreature("crystal dragon",creaturepos)
		doSendAnimatedText(getPlayerPosition(cid), "Fight", 198)
		else
		doPlayerSendCancel(cid,"Sorry, not possible.")	
		end

return 1
end

