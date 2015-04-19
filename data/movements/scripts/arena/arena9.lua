function onStepIn(cid, item, pos)


creaturepos = {x=1114, y=739, z=9, stackpos=1}


		if item.actionid == 39909 then		
		doSummonCreature("deathbringer",creaturepos)
		doSendAnimatedText(getPlayerPosition(cid), "Fight", 198)
		else
		doPlayerSendCancel(cid,"Sorry, not possible.")	
		end

return 1
end

