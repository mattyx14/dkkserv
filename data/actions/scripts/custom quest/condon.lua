function onUse(cid, item, frompos, item2, topos)
	local time_for = getPlayerStorageValue(cid, 66660) + 300
	if (os.time() >= time_for) then
		setPlayerStorageValue(cid, 66660, os.time())
		doSendMagicEffect(topos,CONST_ME_GIFT_WRAPS)
		doPlayerSendTextMessage(cid, 22, 'You are now wearing a condom for next 5 minutes.')
		doRemoveItem(item.uid, 1)
	else
		doPlayerSendCancel(cid, 'You are already safe for sex!')
	end
	return TRUE
end