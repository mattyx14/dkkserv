function onStepIn(cid, item, pos)


creaturepos = {x=1112, y=712, z=9, stackpos=1}

		if item.actionid == 39902 then		
		doSummonCreature("Curserd Girld",creaturepos)
		doSendAnimatedText(getPlayerPosition(cid), "Fight", 198)
		else
		doPlayerSendCancel(cid,"Sorry, not possible.")	
		end

return 1
end

