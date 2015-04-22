local config = {
	[1001] = { -- ITEM ACTIONID
		level = 100,
		storage = 45551,
		container = 1987,

		items = {
			{2160, 1}, {2152, 1}
		}
	}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local v = config[item.actionid]
	if v then
		if getPlayerLevel(cid) >= v.level then
			if getPlayerStorageValue(cid, v.storage) < 0 then
				local item = doCreateItemEx(cid, v.container, 1)
				if(doPlayerAddItemEx(cid, item, true) ~= RETURNVALUE_NOERROR) then
					return doPlayerSendCancel(cid, "Sorry, you are unable to carry this.")
				end
			
				for i = 1, #v.items do
					doAddContainerItem(item, v.items[i][1], v.items[i][2] or 1)
				end
			
				doPlayerSendTextMessage(cid, "You have found a " .. getItemInfo(v.container).name .. ".")
				doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
				setPlayerStorageValue(cid, v.storage, 1)
			else
				return doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
			end
		else
			return doPlayerSendCancel(cid, "Sorry, your level is too low.")
		end
	end
	
	return true
end