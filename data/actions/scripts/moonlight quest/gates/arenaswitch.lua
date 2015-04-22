function onUse(cid, item, frompos, item2, topos)
	if item.uid == 4826 then
		posrewarditem = {x = 1077, y = 653, z = 8, stackpos = 1}
		rewarditem = getThingfromPos(posrewarditem)
		teleportpos = {x = 1065, y = 698, z = 9}
		if (rewarditem.itemid == 10614) then
			doTeleportThing(cid,teleportpos)
			doRemoveItem(rewarditem.uid, 1)
		end
	end

	return true
end
