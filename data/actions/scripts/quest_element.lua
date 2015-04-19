function onUse(cid, item, frompos, item2, topos)

	if item.uid == 10009 then
		tritube1pos = {x=986, y=1500, z=7, stackpos=1}
		tritube2pos = {x=986, y=1504, z=7, stackpos=1}
		tritube3pos = {x=992, y=1500, z=7, stackpos=1}
		tritube4pos = {x=992, y=1504, z=7, stackpos=1}

		get1 = getThingfromPos(tritube1pos)
		get2 = getThingfromPos(tritube2pos)
		get3 = getThingfromPos(tritube3pos)
		get4 = getThingfromPos(tritube4pos)

		teleportpos = {x=1808, y=1601, z=7}

		if (get1.itemid == 8906 and get2.itemid == 8908 and get3.itemid == 8907 and get4.itemid == 8909) then

		     doTeleportThing(cid,teleportpos)
		     doRemoveItem(get1.uid,1)
		     doRemoveItem(get2.uid,1)
		     doRemoveItem(get3.uid,1)
		     doRemoveItem(get4.uid,1)
		end
	end
	return 1
end