local spawns = {
	-- Bosses
	[11] = {position = Position(x, y, z), monster = 'Yeti'},
}

function onThink(interval, lastExecution, thinkInterval)
	if math.random(1000) > 50 then
		return true
	end

	local spawn = spawns[math.random(#spawns)]
	Game.createMonster(spawn.monster, spawn.position, false, true)
	return true
end
