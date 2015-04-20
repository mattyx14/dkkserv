function onSay(cid, words, param, channel)
local t = string.explode(param, ",")
local gm = getCreatureName(cid)
	for _, cid in ipairs(getPlayersOnline()) do
	local accId = getPlayerAccount(cid)
			if(getNotationsCount(accId) < 1) then
				doPlayerAddItem(cid, t[1], 1)
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Everyone have been rewarded a "..getItemNameById(t[1]).." by "..gm.." for the reason: "..tostring(t[2])..".")
				doSendMagicEffect(getCreaturePosition(cid), CONST_ME_GIFT_WRAPS)
			end
		end
	return true
end