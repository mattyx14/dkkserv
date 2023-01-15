local vampireBoss = {
	['zevelon duskbringer'] = {cStorage = DarkKonia.VampireQuest.BossStorageDusk, cGlobalStorage = DarkKonia.VampireQuest.zevelonDuskbringer},
	['sir valorcrest'] = {cStorage = DarkKonia.VampireQuest.BossStorageVarlor, cGlobalStorage = DarkKonia.VampireQuest.sirValorcrest},
	['diblis the fair'] = {cStorage = DarkKonia.VampireQuest.BossStorageFair, cGlobalStorage = DarkKonia.VampireQuest.diblisTheFair},
	['arachir the ancient one'] = {cStorage = DarkKonia.VampireQuest.BossStorageOne, cGlobalStorage = DarkKonia.VampireQuest.arachirTheAncientOne},
}

local vampireKillBosses = CreatureEvent("vampireKillBosses")
function vampireKillBosses.onKill(creature, target)
	if not target:isMonster() then
		return true
	end

	local bossName = target:getName()
	local bossConfig = vampireBoss[bossName:lower()]
	if not bossConfig then
		return true
	end

	if bossConfig.cGlobalStorage then
		Game.setStorageValue(bossConfig.cGlobalStorage, 0)
	end

	if bossConfig.cStorage and creature:getStorageValue(bossConfig.cStorage) < 1 then
		creature:setStorageValue(bossConfig.cStorage, 1)
	end

	creature:say('You slayed ' .. bossName .. '.', TALKTYPE_MONSTER_SAY)
	return true
end
vampireKillBosses:register()
