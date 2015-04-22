function onThink(interval)
	local players = getPlayersOnline()
	for _, pid in ipairs(players) do
		local data = getPlayerSpectators(pid)
		if(data.broadcast) then
			db.executeQuery("UPDATE `players` set `viewers` = " .. table.maxn(data.names) .. " where `id` = " .. getPlayerGUID(pid) .. ";")
		end
	end

	return true
end
