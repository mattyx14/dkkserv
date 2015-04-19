function onThink(interval, lastExecution)
	doSaveServer()
	doBroadcastMessage("Saving Server Loading.... Next save in 25 minutes.")
	return TRUE
end