local loginEvents = CreatureEvent("LoginEvents")
function loginEvents.onLogin(player)

	local events = {
		--Others
		"AdvanceSave",
		"BestiaryOnKill",
		"DropLoot",
		"PlayerDeath",
		"PreyLootBonusKill",
		"RookgaardAdvance",
		"FamiliarLogin",
		"AdvanceFamiliar",

		-- DarkKonia
		"AdvanceReward",
		"KillBoss",
		"vampireKillBosses",
		"BossesForgotten",
		"TentacleDeath",
	}

	for i = 1, #events do
		player:registerEvent(events[i])
	end
	return true
end
loginEvents:register()
