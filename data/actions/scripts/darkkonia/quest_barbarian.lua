--- Brightsword Quest  --> FCC server
--- By ChanTeeLee
---
--- The player must put the 4 itens (Skull, Steel Shield, Bone, leather boots) in the coal basin, 
--- and then must use the blue fire.
--- =D

function onUse(cid, item, frompos, item2, topos)

	-- Brightsword quest
	if item.uid == 59992 then
		tritube1pos = {x=923, y=703, z=10, stackpos=1}
		tritube2pos = {x=923, y=705, z=10, stackpos=1}
		tritube3pos = {x=929, y=703, z=10, stackpos=1}
		tritube4pos = {x=929, y=705, z=10, stackpos=1}

		get1 = getThingfromPos(tritube1pos)
		get2 = getThingfromPos(tritube2pos)
		get3 = getThingfromPos(tritube3pos)
		get4 = getThingfromPos(tritube4pos)

		teleportpos = {x=926, y=706, z=11}

		if (get1.itemid == 7406 and get2.itemid == 7406 and get3.itemid == 7406 and get4.itemid == 7406) then

		     doTeleportThing(cid,teleportpos)
		     doRemoveItem(get1.uid,1)
		     doRemoveItem(get2.uid,1)
		     doRemoveItem(get3.uid,1)
		     doRemoveItem(get4.uid,1)
		end
	end
	return 1
end