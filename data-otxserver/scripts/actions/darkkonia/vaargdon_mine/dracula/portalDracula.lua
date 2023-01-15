local config = {
	[39517] = {
		toPosition = Position(1542, 875, 1) -- Dracula
	}
}

local portalDracula = Action()
function portalDracula.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local targetPosition = config[item.actionid]
	if not targetPosition then
		return true
	end

	if targetPosition and
		player:getStorageValue(DarkKonia.VampireQuest.BossStorageDusk) == 1 and
		player:getStorageValue(DarkKonia.VampireQuest.BossStorageVarlor) == 1 and
		player:getStorageValue(DarkKonia.VampireQuest.BossStorageFair) == 1 and
		player:getStorageValue(DarkKonia.VampireQuest.BossStorageOne) == 1 then
		player:teleportTo(targetPosition.toPosition)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end

	player:say('This statue no have effect!', TALKTYPE_MONSTER_SAY)
	return true
end

portalDracula:aid(39517)
portalDracula:register()
