function onSay(player, words, param)
	if player:getExhaustion(1000) <= 0 then
		player:setExhaustion(1000, 2)
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Player commands:" .. "\n"
			.. "!buyhouse" .. "\n"
			.. "!leavehouse" .. "\n"
			.. "!cast on" .. "\n"
			.. "!cast off" .. "\n"
			.. "!report - !report existe un error aqui" .. "\n"
			.. "!serverinfo" .. "\n"
			.. "!online" .. "\n"
			.. "!deathlist" .. "\n"
			.. "!kills" .. "\n"
			.. "!saveme" .. "\n"
			.. '!addon - !addon "first citizen addon"' .. "\n"
			.. "!buypremium" .. "\n"
			.. "!shop" .. "\n"
			.. "!spells")
		return false
	else
		player:sendTextMessage(MESSAGE_STATUS_SMALL, 'You\'re exhausted for: '..player:getExhaustion(1000)..' seconds.')
	end
end
