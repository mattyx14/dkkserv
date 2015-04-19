function onStepIn(cid, item, pos)


creaturepos = {x=1072, y=720, z=9, stackpos=1}

		if item.actionid == 39904 then		
		doSummonCreature("the lost handmaiden",creaturepos)
		doSendAnimatedText(getPlayerPosition(cid), "Fight", 198)
		else
		doPlayerSendCancel(cid,"Sorry, not possible.")	
		end

return 1
end

