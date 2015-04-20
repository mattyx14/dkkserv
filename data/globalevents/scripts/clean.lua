function executeClean(interval)
	doCleanMap()
	doBroadcastMessage("Game map cleaned, next clean in " .. table.concat(string.timediff(interval / 1000)) .. ".", MESSAGE_STATUS_CONSOLE_ORANGE)
	return true
end

function onThink(interval)
	doBroadcastMessage("Game map cleaning within 30 seconds, please pick up your items!", MESSAGE_STATUS_CONSOLE_ORANGE)
	addEvent(executeClean, 240000, interval)
	return true
end
