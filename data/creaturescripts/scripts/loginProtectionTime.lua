local loginProtectionTime = getConfigInfo('loginProtectionTime')
function onAttack(cid, target)
	if not isPlayer(target) or not isPlayer(cid) then
		return true
	end

	if os.time() - getCreatureStorage(target, "loginProtectionTime") < loginProtectionTime then
		return doPlayerSendCancel(cid, "You cannot attack this player.")
	end

	return true
end
