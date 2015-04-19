-- paradox quest --

function onUse(cid, item, frompos, item2, topos)
	if item.uid == 5045 then
		queststatus = getPlayerStorageValue(cid,9000)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a 32 Talons.")
                        doSendMagicEffect(topos,12)
			sword_uid = doPlayerAddItem(cid,2151,32)
			setPlayerStorageValue(cid,9000,1)

		else
			doPlayerSendTextMessage(cid,22,"It is empty!.")
		end

	elseif item.uid == 5046 then
		queststatus = getPlayerStorageValue(cid,9000)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a 100 Platinum Coins.")
                        doSendMagicEffect(topos,12)
			axe_uid = doPlayerAddItem(cid,2152,100)
			setPlayerStorageValue(cid,9000,1)

		else
			doPlayerSendTextMessage(cid,22,"It is empty!.")
		end

	elseif item.uid == 5047 then
		queststatus = getPlayerStorageValue(cid,9000)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a Crystal Wand.")
                        doSendMagicEffect(topos,12)
			armor_uid = doPlayerAddItem(cid,2184,1)
			setPlayerStorageValue(cid,9000,1)

		else
			doPlayerSendTextMessage(cid,22,"It is empty!.")
		end

	elseif item.uid == 0000 then
		queststatus = getPlayerStorageValue(cid,9000)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a golden key.")
                        doSendMagicEffect(topos,12)
			gkey_uid = doPlayerAddItem(cid,2091,1)
                        doSetItemActionId(gkey_uid,6969)
                        --doSetItemSpecialDescription(key_uid, "the Annikilator Golden Key")--
			setPlayerStorageValue(cid,9000,1)

		else
			doPlayerSendTextMessage(cid,22,"you really have your item of annikilator quest.")
		end

	else
		return 0
	end
	return 1
end
