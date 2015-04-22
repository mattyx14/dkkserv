local position = {x = 466, y = 1424, z = 8}
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getCreatureStorage(cid, 35700) > 1 then
		doTeleportThing(cid, position)
		doSendMagicEffect(position, CONST_ME_TELEPORT)
	else
		return false
	end

	return true
end
