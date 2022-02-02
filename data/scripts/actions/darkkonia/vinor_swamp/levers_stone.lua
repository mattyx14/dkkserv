local configStones = {
	[24887] = { -- Vinor Swamp "Pilar" Swamplair Armor
		rockID = 8539,
		stonePosition = Position(247, 819, 13),
	},
	-- 24888 // Vinor Swamp "Pilar" Swamplair Armor
	-- 24889 // Pirate Mysidia "Stone"
	-- 24890 // Elevator Swich "Fynn"
}

local serverLevers = Action()
function serverLevers.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local p = configStones[item.actionid]
	if not p then
		return true
	end

	if item.itemid == 1945 then
		local tile = p.stonePosition:getTile()
		if tile then
			local stone = tile:getItemById(p.rockID)
			if stone then
				stone:remove()
			end
		end
	elseif item.itemid == 1946 then
		Game.createItem(p.rockID, 1, p.stonePosition)
	end
	return item:transform(item.itemid == 1945 and 1946 or 1945)
end

for index, value in pairs(configStones) do
	serverLevers:aid(index)
end
serverLevers:register()
