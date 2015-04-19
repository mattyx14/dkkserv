function onStepIn(cid, item, pos)


creaturepos = {x=1029, y=673, z=8, stackpos=1}
veces = getPlayerStorageValue(cid,39910)

		if item.actionid == 39910 and veces == -1 then		
		doSummonCreature("frost troll",creaturepos)
		doPlayerSendTextMessage(cid,22,"Respect And Honor to the Champion!")
 		setPlayerStorageValue(cid,39910,1)
		else
		doPlayerSendCancel(cid,"Sorry, not possible.")	
		end

return 1
end

