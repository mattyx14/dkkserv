local spawns = {
	[1]  = {position = Position(491, 1191, 12), monster = 'Demodras'},
	[2]  = {position = Position(887, 1115, 7), monster = 'Demodras'},
	[3]  = {position = Position(940, 907, 13), monster = 'Rotworm Queen'},
	[4]  = {position = Position(791, 1297, 10), monster = 'Rotworm Queen'},
	[5]  = {position = Position(492, 1108, 8), monster = 'Rotworm Queen'},
	[6]  = {position = Position(1214, 1049, 11), monster = 'Furyosa'},
	[7]  = {position = Position(987, 906, 12), monster = 'Angeryosa'},
}

-- Function that is called by the global events when it reaches the time configured
-- interval is the time between the event start and the the effective save, it will send an notify message every minute
function onTime(interval)
	local spawn = spawns[math.random(#spawns)]
	local monster = Game.createMonster(spawn.monster, spawn.position, true, true)
	if not monster then
		print('>> Failed to spawn '..rand.bossName..'.')
		return true
	end

	return true
end
