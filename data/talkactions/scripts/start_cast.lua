function onSay(player, words, param)
	if player:getExhaustion(1000) <= 0 then
		player:setExhaustion(1000, 2)
		if player:startLiveCast(param) then
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You have started casting your gameplay.")
		else
			player:sendCancelMessage("You're already casting your gameplay.")
		end
		return false
	else
		player:sendTextMessage(MESSAGE_STATUS_SMALL, 'You\'re exhausted for: '..player:getExhaustion(1000)..' seconds.')
	end
end
