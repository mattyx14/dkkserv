local uid = {
	[12901] = {done = 12900, reward = 2495, count = 1},
	[12902] = {done = 12900, reward = 8905, count = 1},
	[12903] = {done = 12900, reward = 2495, count = 1},
	[12904] = {done = 12900, reward = 8905, count = 1}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if uid[item.uid] then
		local t = uid[item.uid]
			if(getCreatureStorage(cid, t.done) < 1) then
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found " .. getItemArticleById(t.reward) .. " " .. getItemNameById(t.reward) .. ".")
				doPlayerAddItem(cid, t.reward, t.count)
				doCreatureSetStorage(cid, t.done, 1)
			else
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It's empty.")
			end
		else
			return false
		end
	return true
end
