function executeClean()
	doCleanMap()
	doBroadcastMessage("Game map cleaned, next clean in 2 hours.")
	return TRUE
end

function onThink(interval, lastExecution)
	doBroadcastMessage("Game map cleaning within 4 minutes, please pick up your items!")
	addEvent(executeClean, 240000)
	return TRUE
end