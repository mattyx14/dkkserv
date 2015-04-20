function onAdvance(cid, skill, oldLevel, newLevel)
	if skill == 6 and newLevel > 80 then
		doPlayerAddLevel(cid, 80 - getPlayerLevel(cid))
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You cant pass level 80.")
	end
	return true
end