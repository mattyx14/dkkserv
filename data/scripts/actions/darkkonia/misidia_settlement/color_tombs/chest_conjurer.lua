local outfits = {
	[30249] = {DarkKonia.OutfitQuest.ZarabustorReward, 'Conjurer', 635, 634},
}

local conjurerReward = Action()
function conjurerReward.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local outfit = outfits[item.uid]
	if player:getStorageValue(DarkKonia.OutfitQuest.ZarabustorKilled) < 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to kill Zarabustor to take this quest.")
		return true
	end

	if player:getStorageValue(outfit[1]) == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		return true
	end

	if outfit then
		if player:getStorageValue(outfit[1]) == -1 then
			if player:getSex() == 0 then
				player:addOutfitAddon(outfit[3])
			else
				player:addOutfitAddon(outfit[4])
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

conjurerReward:uid(30249)
conjurerReward:register()
