local outfits = {
	[6096] = {6096, 'Pirate', 155, 151, 6096},
	-- [2420] = {2420, 'Assassin', 156, 152, 2420}
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
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
