local outfits = {
	[30135] = {DarkKonia.AnniQuest.pirateDone, 'Pirate', 155, 151, 6096},
	[30136] = {DarkKonia.AnniQuest.deathHeraldDone, 'Death Herald', 666, 667, 18935}, -- 10005, 10006 and 10007 is reserved storage for kill Dracula
	[30178] = {DarkKonia.HidenChest.orientalOutfit, 'Oriental', 150, 146, 7533},
	[30177] = {DarkKonia.HidenChest.marryOutfit, 'Marry', 329, 328, 3004},
	[30189] = {DarkKonia.HidenChest.demonHunterOutfit, 'Demonhunter', 288, 289, 7431},
	[30190] = {DarkKonia.HidenChest.chaosAcolyteOutfit, 'Chaos Acolyte', 664, 665, 8191},
	[30194] = {DarkKonia.HidenChest.insectoidOutfit, 'Insectoid', 466, 465, 14246},
	[30195] = {DarkKonia.HidenChest.deaplingOutfit, 'Deepling', 464, 463, 13995},
	-- [30249] = {DarkKonia.OutfitQuest.ZarabustorReward, 'Conjurer', 635, 634}, -- /data/scripts/actions/darkkonia/misidia_settlement/color_tombs/chest_conjurer.lua
}

local outfitQuestSystem = Action()
function outfitQuestSystem.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local outfit = outfits[item.uid]
	if outfit then
		if player:getStorageValue(outfit[1]) == -1 then
			if player:getSex() == 0 then
				player:addOutfitAddon(outfit[3])
				player:addItem(outfit[5], 1)
			else
				player:addOutfitAddon(outfit[4])
				player:addItem(outfit[5], 1)
			end

			player:sendTextMessage(MESSAGE_INFO_DESCR, "You now have the " .. outfit[2] .. " outfit!")
			player:setStorageValue(outfit[1], 1)
			player:getPosition():sendMagicEffect(CONST_ME_ENERGYAREA)
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already have the " .. outfit[2] .. " outfit.")
		end
	end

	return true
end

for index, value in pairs(outfits) do
	outfitQuestSystem:uid(index)
end
outfitQuestSystem:register()
