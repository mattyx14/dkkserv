local rewards = {
	[24928] = {
		storage = DarkKonia.ArusBosses.FyzarusKilled,
		bossName = 'Fyzarus',
		items = {
			{rand = true, itemId = {27449, 27452, 27458}},
			{itemId = 3043, count = 25},
		}
	},
	[24929] = {
		storage = DarkKonia.ArusBosses.FezarusKilled,
		bossName = 'Fezarus',
		items = {
			{rand = true, itemId = {27451, 27454, 27455, 27456}},
			{itemId = 3043, count = 25},
		}
	},
	[24930] = {
		storage = DarkKonia.ArusBosses.ToxirusKilled,
		bossName = 'Toxirus',
		items = {
			{rand = true, itemId = {27450, 27453, 27457}},
			{itemId = 3043, count = 25},
		}
	},
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

	if player:getStorageValue(reward.storage) ~= 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, reward.bossName .. ' defends his belongings and will not let you open his chest.')
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

	player:setStorageValue(reward.storage, 0)
	return true
end

bossesRewardRand:uid(24928, 24929, 24930)
bossesRewardRand:register()

