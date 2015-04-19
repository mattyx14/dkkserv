--Example change voc and masterpos--

function onUse(cid, item, frompos, item2, topos)
	if item.uid==2052 then
		newpos = {x=1298, y=897, z=7}
		doPlayerSetMasterPos(cid, newpos)
		doPlayerSendTextMessage(cid,22,"You have changed yuor residence to Venore")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end