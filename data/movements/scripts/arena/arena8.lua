function onStepIn(cid, item, pos)


creaturepos = {x=1107, y=681, z=9, stackpos=1}

		if item.actionid == 39908 then		
		doSummonCreature("massivetorturer",creaturepos)
		doSendAnimatedText(getPlayerPosition(cid), "Fight", 198)
		else
		doPlayerSendCancel(cid,"Sorry, not possible.")	
		end

return 1
end

