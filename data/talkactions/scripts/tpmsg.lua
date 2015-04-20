local standPos = {x=1030,y=1002,z=7} -- Posicion en la que player tiene que estar para decir las palabras magicas
local newPos = {x=1031,y=1018,z=7} -- Posicion a la que sera teletransportado al decir las palabras magicas

function onSay(cid, param)
	if comparePos(getPlayerPosition(cid), standPos) then
		doSendMagicEffect(getPlayerPosition(cid), 2)
			doTeleportThing(cid, newPos)
			doSendMagicEffect(newPos, 10)
		end
	return true
end