local backpackId = 2856
local itemsVampirims = {
	{9685, 25},
	{9633, 15},
	{9663, 5}
}

local itemsStrike = {
	{11444, 20},
	{10311, 25},
	{22728, 5}
}

local itemsVoid = {
	{11492, 25},
	{20200, 25},
	{9663, 5}
}

local imbuidKitVampirims = Action()
function imbuidKitVampirims.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local backpack = Game.createItem(backpackId, 1)
	for _, it in pairs(itemsVampirims) do
		backpack:addItem(it[1], it[2])
	end
	player:addItemEx(backpack)
	player:sendTextMessage(MESSAGE_INFO_DESCR, 'You obtain a vampirism kit.')
	item:remove(1)
	player:save()
	return true
end

local imbuidKitStrike = Action()
function imbuidKitStrike.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local backpack = Game.createItem(backpackId, 1)
	for _, it in pairs(itemsStrike) do
		backpack:addItem(it[1], it[2])
	end
	player:addItemEx(backpack)
	player:sendTextMessage(MESSAGE_INFO_DESCR, 'You obtain a strike kit.')
	item:remove(1)
	player:save()
	return true
end

local imbuidKitVoid = Action()
function imbuidKitVoid.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local backpack = Game.createItem(backpackId, 1)
	for _, it in pairs(itemsVoid) do
		backpack:addItem(it[1], it[2])
	end
	player:addItemEx(backpack)
	player:sendTextMessage(MESSAGE_INFO_DESCR, 'You obtain a void kit.')
	item:remove(1)
	player:save()
	return true
end

imbuidKitVampirims:id(6570)
imbuidKitStrike:id(6571)
imbuidKitVoid:id(8853)
imbuidKitVampirims:register()
imbuidKitStrike:register()
imbuidKitVoid:register()
