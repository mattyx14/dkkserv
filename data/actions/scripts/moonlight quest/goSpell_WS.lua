local spell = 'GoPokemon'
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.aid == 14061 then
		queststatus = getPlayerStorageValue(cid, 14061)
		if queststatus == -1 or queststatus == 0 then
			doPlayerLearnInstantSpell(cid, spell)
			doSendMagicEffect(fromPosition, CONST_ME_LIGHTS)
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Now you can call a pokemon! ('..spell..')')
			setPlayerStorageValue(cid, 14061, 1)
			doRemoveItem(item.uid, 1)
		else
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ORANGE, "You can not use this pokeball.")
		end else
		return false
	end

	return true
end
