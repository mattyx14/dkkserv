local freeBlessMaxLevel = 50

function onLogin(player)
	if player:getLevel() <= freeBlessMaxLevel then
		for i = 1, 5 do
			player:addBlessing(i)
		end
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "From this new level " .. freeBlessMaxLevel .. " or more onwards you can lose experience, items and skills if you are killed.")
	end

	if player:getStorageValue(Storage.infiniteBless) == 1 then
		for i = 1, 6 do -- 6 equal to PVP Blessing
			player:addBlessing(i)
		end
		player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Now you have infinite blessings.")
	end

	player:say('FREE BLESSINGS', TALKTYPE_ORANGE_1)
	player:getPosition():sendMagicEffect(CONST_ME_HOLYDAMAGE)
	return true
end
