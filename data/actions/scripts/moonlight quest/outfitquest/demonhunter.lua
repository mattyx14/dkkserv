local config = {
	[50010] = {
		premiumOnly = false,
		storage = 50015,
		level = 120,
		t = {
			[{1, 4, 7, 10, 13, 16, 19, 22}] = {
				{11259, 1}, {11306, 1}
			},
			[{2, 5, 8, 11, 14, 17, 20, 23}] = {
				{8856, 1}
			},
			[{3, 6, 9, 12, 15, 18, 21, 24}] = {
				{2453, 1}, {2415, 1}, {2390, 1}, {8905, 1}
			}
		}
	}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local v = config[item.actionid]

	if(v.premiumOnly) then
		if(not isPremium(cid)) then
			doPlayerSendCancel(cid, "Sorry, you are not a Premium member.")
			return true
		end
	end

	if(getCreatureStorage(cid, v.storage) > 0) then
		doPlayerSendCancel(cid, "The " .. getItemName(item.uid) .. " is empty.")
		return true
	end

	if(getPlayerLevel(cid) < v.level) then
		doPlayerSendCancel(cid, "Sorry, not possible.")
		return true
	end

	for voc, k in pairs(v.t) do
		if(isInArray(voc, getPlayerVocation(cid))) then
			for i = 1, #k do
				local id = doCreateItemEx(k[i][1], k[i][2] or 1)
				if(doPlayerAddItemEx(cid, id) ~= RETURNVALUE_NOERROR) then
					return doPlayerSendCancel(cid, #k == 1 and "You cannot carry this item." or "You cannot carry these items."), false
				end
			end

			doCreatureSetStorage(cid, v.storage, 1)

			local msg = "You have found"
			if #k > 0 then
				for p = 1, #k do
					msg = msg .. " " .. k[p][2] .. " " .. (#k == 1 and "" .. getItemInfo(k[p][1]).name .. "" or "" .. getItemInfo(k[p][1]).plural .. "") .. " "
				end
			end

			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, msg)
			doSendMagicEffect(getThingPosition(cid), CONST_ME_MAGIC_BLUE)
		end
	end

	return true
end