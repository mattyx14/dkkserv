local bosses = {
	-- bosses
	['lady tenebris'] = {killed = Storage.ForgottenKnowledge.LadyTenebrisKilled},
}

function onKill(creature, target)
	local targetMonster = target:getMonster()
	if not targetMonster or targetMonster:getMaster() then
		return true
	end

	local bossConfig = bosses[targetMonster:getName():lower()]
	if not bossConfig then
		return true
	end

	for pid, _ in pairs(targetMonster:getDamageMap()) do
		local attackerPlayer = Player(pid)
		if attackerPlayer then
			if bossConfig.killed then
				attackerPlayer:setExhaustion(bossConfig.killed, 30 * 60 * 1000)
			end
		end
	end

	return true
end
