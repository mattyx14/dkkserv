-- local storage = 65799
local raids = {
	"Orshabaal",
}

function onThink(interval, lastExecution, thinkInterval)
	Game.startRaid(raids)
	return true
end
