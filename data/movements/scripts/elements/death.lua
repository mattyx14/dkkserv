function onStepIn(cid, item, pos)
	APPLE_ID = 2674
	ACTION_ID = 10104
	if (item.actionid == 10104) then
		Dmg_Random = math.random(100,500)
		if (getPlayerItemCount(cid, 2674) ~= 0) then
			doTeleportThing(cid, {x=985, y=1472, z=7})
			doPlayerRemoveItem(cid, 2674 ,0)
		else
			doTeleportThing(cid, {x=1001, y=1554, z=5})
			doCreatureAddHealth(cid, -Total_Damage)
			doSendAnimatedText(pos, Total_Damage, 186)
		end
		if getPlayerHealth(cid) < Dmg_Random then
			Total_Damage = getPlayerHealth(cid)
		else
			Total_Damage = Dmg_Random
		end
	end
end