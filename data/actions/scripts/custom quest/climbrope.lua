--Climb rope by Dzojo--

function onUse(cid, item, frompos, item2, topos)

	
	if item2.itemid == 0 then
		return 0
	end 

	npos = {x=topos.x, y=topos.y, z=topos.z, stackpos=0}
      npos2 = {x=topos.x, y=topos.y, z=topos.z + 1, stackpos=0}

	grounditem = getThingfromPos(npos)
      wallitem = getThingfromPos(npos2)
	
	if grounditem.itemid == 893 and wallitem.itemid == 904 then
		doTeleportThing(cid,npos2)

	elseif grounditem.itemid == 418 then
		npos.y = npos.y - 1
		npos.z = npos.z + 1
		doTeleportThing(cid,npos)

--END hole or stair to rope items--
	else
		return 0
	end
	
	return 1
end