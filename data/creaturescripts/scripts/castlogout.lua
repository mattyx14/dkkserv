function onLogout(cid, forceLogout)
	db.executeQuery("UPDATE `players` SET `broadcasting` = 0, `viewers` = 0 WHERE `id` = " .. getPlayerGUID(cid) .. " LIMIT 1")

	return true
end
