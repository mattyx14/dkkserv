--Example change voc and masterpos--

function onUse(cid, item, frompos, item2, topos)
	if item.uid==2053 then
		newpos = {x=1801, y=967, z=3}
		doPlayerSetMasterPos(cid, newpos)
		doPlayerSendTextMessage(cid,22,"You have changed your residence to Darashia")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end