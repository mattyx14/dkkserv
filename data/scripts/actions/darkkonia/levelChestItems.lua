local rewards = {
	[24932] = {
		storage = DarkKonia.SecondSacrifice.secondTip,
		text = 'first',
		specialStorage = DarkKonia.firstReward,
		items = {
			{rand = true, itemId = {10200, 10201}},
			{itemId = 3043, count = 15},
		}
	},
	[24933] = {
		storage = DarkKonia.ThirdSacrifice.thirdTip,
		text = 'second',
		specialStorage = DarkKonia.secondReward,
		items = {
			{rand = true, itemId = {8078, 8079, 8080, 8081}},
			{itemId = 3043, count = 15},
		}
	},
	[24934] = {
		storage = DarkKonia.FirstQuest.finalTip,
		text = 'third',
		specialStorage = DarkKonia.thirdReward,
		items = {
			{rand = true, itemId = {31617, 32618, 27457}},
			{itemId = 3043, count = 15},
		}
	}
}

local bossesRewardRand = Action()

function bossesRewardRand.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid ~= 4073 then
		return false
	end

	local reward = rewards[item.uid]
	if not reward then
		return false
	end

	if player:getStorageValue(reward.specialStorage) > 0 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'It is empty.')
		return true
	end

	if player:getStorageValue(reward.storage) ~= 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "To claim this treasure you must complete the ".. reward.text .." part of the quest my first sacrifice")
		return true
	end

	local bag = Game.createItem(2853)
	for i = 1, #reward.items do
		local items = reward.items[i]
		if items.rand then
			if math.random(3) == 1 then
				bag:addItem(items.itemId[math.random(#items.itemId)], 1)
			end
		else
			bag:addItem(items.itemId, items.count or 1)
		end
	end

	if player:addItemEx(bag) ~= RETURNVALUE_NOERROR then
		local weight = bag:getWeight()
		if player:getFreeCapacity() < weight then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format('You have found %s weighing %.2f oz. You have no capacity.', bag:getName(), (weight / 100)))
		else
			player:sendCancelMessage('You have found a bag, but you have no room to take it.')
		end
		return true
	end

	player:setStorageValue(reward.specialStorage, 1)
	return true
end

bossesRewardRand:uid(24932, 24933, 24934)
bossesRewardRand:register()

