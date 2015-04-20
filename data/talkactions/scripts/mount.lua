local g = getMountInfo
local table = { --[nombre del mount(autogenerado)] = {id del mount, item requerido}
	[g(1).name:lower()] = {1, 13307},
	[g(2).name:lower()] = {2, 13298},
	[g(3).name:lower()] = {3, 5907},
	[g(4).name:lower()] = {4, 13295},
	[g(5).name:lower()] = {5, 13293},
	[g(6).name:lower()] = {6, 13294},
	[g(7).name:lower()] = {7, 13305},
	[g(8).name:lower()] = {8, 13292},
	[g(9).name:lower()] = {9, 12318},
	[g(10).name:lower()] = {10, 13247},
	[g(11).name:lower()] = {11, 12300},
	[g(12).name:lower()] = {12, 13291}
}

function onSay(cid, words, param, channel)

	if isInArray({'help','mount','mounts'},param:lower()) then
		local i = ''
		for m, n in pairs(table) do
			i = i .. '[' .. n[1] .. '] '
		end
		return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You can choose from these mounts: ' .. i)
	end

	local t = table[param:lower()]
	if not t then
		return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'Invalid mount name, use !mount help for more info.')
	end

	if getPlayerMount(cid, t[1]) then
		return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You already have this mount.')
	end

	if getPlayerItemCount(cid, t[2]) == 0 then
		return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You need a ' .. getItemNameById(t[2]) .. ' in order to obtain that mount.')
	end

	doPlayerAddMount(cid, t[1])
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, 'You\'ve got the ' .. getMountInfo(t[1]).name .. ' mount! +' .. getMountInfo(t[1]).speed .. ' speed bonus.')
	return true
end