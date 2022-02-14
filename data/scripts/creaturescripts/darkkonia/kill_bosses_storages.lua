local bossesForgotten = CreatureEvent("BossesForgotten")
function bossesForgotten.onKill(player, creature)
	if not player:isPlayer() then return true end
	if not creature:isMonster() or creature:getMaster() then return true end
	local bosses = {
		["lady tenebris"] = {stg = Storage.ForgottenKnowledge.LadyTenebrisKilled, value = 1},
		["jaul"] = {stg = DarkKonia.MisidiaQuest.JaulKilled, value = 1},
		["izcandar champion of winter"] = {stg = DarkKonia.AnsharaPOI.IzcandarWinterKilled, value = 1},
		["infernus"] = {stg = DarkKonia.AnsharaPOI.InfernusKilled, value = 1},
		["zarabustor"] = {stg = DarkKonia.OutfitQuest.ZarabustorKilled, value = 1},
		["black knight"] = {stg = DarkKonia.ElficVille.BlackKnightKilled, value = 1},
	}
	local monsterName = creature:getName():lower()
	local boss = bosses[monsterName]
	if boss then
		for playerid, damage in pairs(creature:getDamageMap()) do
			local p = Player(playerid)
			if p then
				if p:getStorageValue(boss.stg) < boss.value then
					p:setStorageValue(boss.stg, boss.value)
				end
			end
		end
	end
	return true
end
bossesForgotten:register()
