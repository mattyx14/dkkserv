local logout = CreatureEvent("PlayerLogout")

function logout.onLogout(player)
	local playerId = player:getId()
	if nextUseStaminaTime[playerId] ~= nil then
		nextUseStaminaTime[playerId] = nil
	end
	return true
end

logout:register()
