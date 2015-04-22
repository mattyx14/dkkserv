local statue = {
	[18488] = SKILL_SWORD,
	[18489] = SKILL_AXE,
	[18490] = SKILL_CLUB,
	[18491] = SKILL_DISTANCE,
	[18492] = SKILL__MAGLEVEL
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if isPlayerPzLocked(cid) then
		return false
	end

	OfflineLevel = getConfigValue('levelToOfflineTraining')
	if getPlayerLevel(cid) <= OfflineLevel then
		return false
	end

	doPlayerSetOfflineTrainingSkill(cid, statue[item.itemid])
	doRemoveCreature(cid)
	return true
end
