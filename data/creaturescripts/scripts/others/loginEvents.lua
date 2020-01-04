function onLogin(player)
	local events = {
		"PlayerDeath",
		"AdvanceSave",
		"DropLoot",
		"BossParticipation",
		"petlogin",
		"petthink",
		"bonusPreyLootKill",

		-- DarkKonia
		"onadvance_reward",
		"KillBoss",
		"VampireKill",
		"modalAD",
		"modalMD",
		"BossesForgotten",
	}
	
	for i = 1, #events do
		player:registerEvent(events[i])
	end

	return true
end
