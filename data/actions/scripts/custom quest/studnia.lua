function onUse(cid, item, frompos, item2, topos)
	npos = {x=frompos.x,  y=frompos.y,  z=frompos.z}
	if item.uid == 1500 then
		npos.y = npos.z - 1
		doTeleportThing(cid, npos)
	end
end

