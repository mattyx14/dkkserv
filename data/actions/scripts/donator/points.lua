local cfg = {
	points = 10,
	effect = CONST_ME_MAGIC_GREEN
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 8560 then
		if getPlayerStorageValue(cid, 8560) == -1 then
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'You have found a Hellforged axe')
			doPlayerAddItem(cid, 8924, 1)
			setPlayerStorageValue(cid,8560,1)
			doPlayerAddPvpPoints(cid, cfg.points)
			doCreatureSay(cid, "You have received " .. cfg.points .. " war points!", TALKTYPE_ORANGE_1)
			doSendMagicEffect(getThingPos(cid), cfg.effect)
			doRemoveItem(item.uid, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "The " .. getItemName(item.uid) .. " is empty.")
		end
	end

	return true
end
