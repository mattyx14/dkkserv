function onStepIn(cid, item, pos)

star = {x=1378, y=1827, z=14, stackpos=1}

		if item.actionid == 39913 then
		doSummonCreature("leviathan",star)
		doPlayerSendTextMessage(cid,22,"Muuuhaaahhhhh")
		else
		doPlayerSendCancel(cid,"Sorry, not possible.")	
		end

return 1
end