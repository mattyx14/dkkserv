--Create by chojrak
--Edit by Czarus (marcinek123)

function onSay(cid, words, param)
	local a = {x = 207, y = 373, z = 7}
	local b = {x = 537, y = 545, z = 7}
	local c = {x = 444, y = 429, z = 7}
	local storagea = 3331
	local storageb = 3332
	local storagec = 3333
	local tmp = getPlayerPosition(cid)
	if (tmp.x == 207 and tmp.y == 373 and tmp.z == 7) or (tmp.x == 537 and tmp.y == 545 and tmp.z == 7) or (tmp.x == 444 and tmp.y == 429 and tmp.z == 7) then 
	
	if (param == 'a') and  getPlayerStorageValue(cid, storagea) == 1 then
			doTeleportThing(cid, a, TRUE)
			doSendAnimatedText(getPlayerPosition(cid),'zZzZzZ', TEXTCOLOR_BLUE)
			doSendMagicEffect(tmp, 31)
			doSendMagicEffect(getPlayerPosition(cid), 48)
			
	elseif (param == 'dark camp') and getPlayerStorageValue(cid, storageb) == 1 then
			doTeleportThing(cid, b, TRUE)
			doSendAnimatedText(getPlayerPosition(cid),'zZzZzZ', TEXTCOLOR_BLUE)
			doSendMagicEffect(tmp, 31)
			doSendMagicEffect(getPlayerPosition(cid), 48)
			
	elseif (param == 'c') and getPlayerStorageValue(cid, storagec) == 1 then
			doTeleportThing(cid, c, TRUE)
			doSendAnimatedText(getPlayerPosition(cid),'zZzZzZ', TEXTCOLOR_BLUE)
			doSendMagicEffect(tmp, 31)
			doSendMagicEffect(getPlayerPosition(cid), 48)
	else 	
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You must at first activate this portal.")
			doSendMagicEffect(getPlayerPosition(cid), 2)
	
		end
	else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You can't teleport from here.")
			doSendMagicEffect(getPlayerPosition(cid), 2)
	end
		return TRUE
end
