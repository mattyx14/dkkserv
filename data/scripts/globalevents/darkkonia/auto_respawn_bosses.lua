local spawns = {
	[1]  = {position = Position(491, 1191, 12), monster = 'Demodras'}, -- Sohan
	[2]  = {position = Position(887, 1115, 7), monster = 'Demodras'}, -- Fynn
	[3]  = {position = Position(940, 907, 13), monster = 'Rotworm Queen'}, -- Fynn
	[4]  = {position = Position(791, 1297, 10), monster = 'Rotworm Queen'}, -- Agard
	[5]  = {position = Position(492, 1108, 8), monster = 'Rotworm Queen'}, -- Sohan
	[6]  = {position = Position(1214, 1049, 11), monster = 'Furyosa'}, -- Fynn
	[7]  = {position = Position(987, 906, 12), monster = 'Angeryosa'}, -- Fynn
	[8]  = {position = Position(901, 979, 6), monster = 'Fernfang'}, -- Fynn
	[9]  = {position = Position(1037, 219, 5), monster = 'General Murius'}, -- Misidia
	[10]  = {position = Position(633, 375, 10), monster = 'The Horned Fox'}, -- Anshara
	[11]  = {position = Position(1051, 175, 9), monster = 'Grorlam'}, -- Misidia
	[12]  = {position = Position(1048, 1212, 8), monster = 'Man In The Cave'}, -- Mer Jungle
	[13]  = {position = Position(823, 987, 6), monster = 'Man In The Cave'}, -- Fynn
	[14]  = {position = Position(987, 652, 7), monster = 'Man In The Cave'}, -- Jorvik
	[15]  = {position = Position(811, 1021, 8), monster = 'The Old Widow'}, -- Fynn
	[16]  = {position = Position(703, 374, 6), monster = 'The Old Widow'}, -- Anshara
	[17]  = {position = Position(707, 1177, 9), monster = 'The Old Widow'}, -- Elfic
	[18]  = {position = Position(798, 348, 7), monster = 'Tyrn'}, -- Anshara
	[19]  = {position = Position(606, 1261, 6), monster = 'Tyrn'}, -- Elfic
	[20]  = {position = Position(906, 1005, 8), monster = 'White Pale'}, -- Fynn
	[21]  = {position = Position(929, 1031, 6), monster = 'Xenia'}, -- Fynn
	[22]  = {position = Position(980, 652, 5), monster = 'Zushuka'}, -- Jorvik
	[23]  = {position = Position(273, 1327, 4), monster = 'The Welter'}, -- Samaransa Bay
	[24]  = {position = Position(1002, 1278, 10), monster = 'The Welter'}, -- Mer Jungle
	[25]  = {position = Position(618, 360, 6), monster = 'Demodras'}, -- Anshara
	[26]  = {position = Position(1058, 1108, 8), monster = 'Crustacea Gigantica'}, -- Fynn
	[27]  = {position = Position(992, 945, 7), monster = 'Donkey'}, -- Fynn
	[28]  = {position = Position(999, 1073, 7), monster = 'Terror Bird'}, -- Fynn
	[29]  = {position = Position(947, 896, 11), monster = 'Elf Overseer'}, -- Fynn
	[30]  = {position = Position(951, 1045, 3), monster = 'Dharalion'}, -- Fynn
	[31]  = {position = Position(830, 892, 11), monster = 'Undead Cavebear'}, -- Fynn
	[32]  = {position = Position(832, 894, 11), monster = 'Necropharus'}, -- Fynn
	[33]  = {position = Position(636, 1098, 4), monster = 'Dharalion'}, -- Elfic Ville
}

-- Function that is called by the global events when it reaches the time configured
-- interval is the time between the event start and the the effective save, it will send an notify message every minute

local autoRespawnBosses = GlobalEvent("AutoRespawnBosses")
function autoRespawnBosses.onTime(interval)
	local spawn = spawns[math.random(#spawns)]
	local monster = Game.createMonster(spawn.monster, spawn.position, true, true)

	if not monster then
		Spdlog.error(string.format("[autoRespawnBosses] - Failed to spawn %s",
			rand.bossName))
		return true
	end
	return true
end

autoRespawnBosses:time("00:00:00")
autoRespawnBosses:time("04:00:00")
autoRespawnBosses:time("08:00:00")
autoRespawnBosses:time("12:00:00")
autoRespawnBosses:time("16:00:00")
autoRespawnBosses:time("20:00:00")
autoRespawnBosses:register()
