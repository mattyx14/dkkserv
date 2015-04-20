local stor, limit = 7575, 5 	--storage, limit to add.
local allow_container = false 	--empty! not looted with items, atleast for now.

function onSay(cid, words, param)
	local expl = param:explode(':')
	local action, rst = expl[1], expl[2]
	if (action:lower() == 'check') then
		local infos, list = getPlayerStorageValue(cid, stor), {}
		if (infos ~= -1) then
			list = tostring(infos):explode(',')
		end
		local txt = 'Autoloot List:\n'
		if (#list > 0) then
			for k, id in ipairs(list) do
				id = id:gsub('_', '')
				if tonumber(id) then
					txt = txt .. getItemNameById(tonumber(id)) .. ((k < #list) and '\n' or '')
				end
			end
		else
			txt = 'Empty'
		end
		doPlayerPopupFYI(cid, txt)
	elseif (action:lower() == 'add') then
		local infos, list = getPlayerStorageValue(cid, stor), {}
		if (infos ~= -1) then
			list = tostring(infos):gsub('_', ''):explode(',')
		end
		if (#list >= limit) then
			return doPlayerSendCancel(cid, 'You already have ' .. limit .. ' autolooting items.')
		end
		local item = tonumber(rst)
		if not item then
			item = getItemIdByName(rst, false)
			if not item then
				return doPlayerSendCancel(cid, 'not valid item.')
			end
		end
		if not allow_container and isItemContainer(item) then
			return doPlayerSendCancel(cid, 'this item can not be autolooted.')
		end
		local attrs = getItemInfo(item)
		if not attrs then
			return doPlayerSendCancel(cid, 'not valid item.')
		elseif not attrs.movable or not attrs.pickupable then
			return doPlayerSendCancel(cid, 'this item can not be autolooted.')
		end
		if isInArray(list, item) then
			return doPlayerSendCancel(cid, 'already added.')
		end
		table.insert(list, tostring(item))
		local new = ''
		for v, id in ipairs(list) do
			new = new .. '_' .. id:gsub('_' ,'') .. ((v < #list) and ',' or '')
		end
		doPlayerSetStorageValue(cid, stor, tostring(new))
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, 'Item >>' .. getItemNameById(item) .. '<< has been added to the autoloot list.')
	elseif (action:lower() == 'remove') then
		local infos, list = getPlayerStorageValue(cid, stor), {}
		if (infos ~= -1) then
			list = tostring(infos):gsub('_', ''):explode(',')
		end
		if (#list == 0) then
			return doPlayerSendCancel(cid, 'You dont have any item added.')
		end
		if (#list >= limit) then
			return doPlayerSendCancel(cid, 'You already have ' .. limit .. ' autolooting items.')
		end
		local item = tonumber(rst)
		if not item then
			item = getItemIdByName(rst, false)
			if not item then
				return doPlayerSendCancel(cid, 'not valid item.')
			end
		end
		if not isInArray(list, item) then
			return doPlayerSendCancel(cid, 'This item is not in the list.')
		end
		local new = ''
		for v, id in ipairs(list) do
			if (tonumber(id) ~= item) then
				new = new .. '_' .. id:gsub('_' ,'') .. ((v < #list) and ',' or '')
			end
		end
		doPlayerSetStorageValue(cid, stor, tostring(new))
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, 'Item >>' .. getItemNameById(item) .. '<< removed from the autoloot list.')
	end		
	return true
end