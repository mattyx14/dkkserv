local premiumScroll = Action()
function premiumScroll.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local maxDay = 1
	local maxLevel = 50
	if player:getPremiumDays() <= maxDay and player:getLevel() >= maxLevel and player:getStorageValue(DarkKonia.Rewards.secondLevelReward) == 1 then
		item:remove(1)
		player:addPremiumDays(5)
		player:setStorageValue(DarkKonia.Rewards.secondLevelReward, 2)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You gain 5 premium days time.")
		player:save()
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "you have more than ".. maxDay .." day of premium and you have also already obtained this item \z
			and your level is lower than level ".. maxLevel .." you will not be able to use this item.")
	end

	return true
end

premiumScroll:id(14758)
premiumScroll:register()
