local messages = {
	"Comenten a sus amigos que la descarga del Client 40.0 es obligatoria para poder jugar."
}

local i = 0

function onThink(interval, lastExecution)
local message = messages[(i % #messages) + 1]
	doBroadcastMessage("Information: " .. message .. "", MESSAGE_STATUS_CONSOLE_ORANGE)
		i = i + 1

	return true
end
