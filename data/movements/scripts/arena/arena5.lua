function onStepIn(cid, item, pos)


creaturepos = {x=1053, y=731, z=9, stackpos=1}

		if item.actionid == 39905 then		
		doSummonCreature("efnunbras",creaturepos)
		doSendAnimatedText(getPlayerPosition(cid), "Fight", 198)
		else
		doPlayerSendCancel(cid,"Sorry, not possible.")	
		end

return 1
end

