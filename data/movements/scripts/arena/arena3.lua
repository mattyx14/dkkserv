function onStepIn(cid, item, pos)


creaturepos = {x=1094, y=725, z=9, stackpos=1}

		if item.actionid == 39903 then		
		doSummonCreature("Assassin Mort",creaturepos)
		doSendAnimatedText(getPlayerPosition(cid), "Fight", 198)
		else
		doPlayerSendCancel(cid,"Sorry, not possible.")	
		end

return 1
end

