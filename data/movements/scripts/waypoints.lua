-- Created by Czarus (marcinek123

function onStepIn(cid, position)
	local storagea = 3331
	local storageb = 3332
	local storagec = 3333
	local tmp = getPlayerPosition(cid)	
	
	if getPlayerStorageValue(cid, storagea) == -1 and (tmp.x == 207 and tmp.y == 373 and tmp.z == 7) then
	      setPlayerStorageValue(cid, storagea, 1)
	doSendMagicEffect(getPlayerPosition(cid), 14)
	
	elseif getPlayerStorageValue(cid, storageb) == -1 and (tmp.x == 537 and tmp.y == 545 and tmp.z == 7) then
			setPlayerStorageValue(cid, storageb, 1)
			doSendMagicEffect(getPlayerPosition(cid), 14)
	
	elseif getPlayerStorageValue(cid, storagec) == -1 and (tmp.x == 444 and tmp.y == 429 and tmp.z == 7) then
			setPlayerStorageValue(cid, storagec, 1)
			doSendMagicEffect(getPlayerPosition(cid), 14)

	else 
			doSendMagicEffect(getPlayerPosition(cid), 12)
		end			
	return FALSE
end
