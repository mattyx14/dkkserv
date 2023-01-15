local configStones = {
	[24884] = { -- Izcandar POI "Stone"
		blockItemID = 1841,
		portalID = 25058,
		stonePosition = Position(402, 233, 9),
		teleportPosition = Position(402, 236, 9),
		destinationTeleport = Position(401, 247, 9)
	},
	[24885] = { -- Ferumbras Tower "Wall"
		blockItemID = 8202,
		portalID = 25058,
		stonePosition = Position(481, 441, 7),
		teleportPosition = Position(480, 456, 7),
		destinationTeleport = Position(480, 458, 6)
	},
	[24886] = { -- Ferumbras Tower "Wall"
		blockItemID = 8202,
		portalID = 25050,
		stonePosition = Position(481, 445, 6),
		teleportPosition = Position(481, 452, 6),
		destinationTeleport = Position(481, 460, 5)
	},
	-- 24887 // Vinor Swamp "Pilar" Swamplair Armor - data/scripts/actions/levers_stone.lua
	[24888] = { -- Vinor Swamp "Pilar" Swamplair Armor
		blockItemID = 7709,
		portalID = 25050,
		stonePosition = Position(293, 792, 13),
		teleportPosition = Position(293, 786, 13),
		destinationTeleport = Position(280, 819, 13)
	},
	[24889] = { -- Pirate Mysidia "Stone"
		blockItemID = 1840,
		portalID = 1949,
		stonePosition = Position(1125, 202, 7),
		teleportPosition = Position(1104, 91, 7),
		destinationTeleport = Position(1088, 65, 8)
	},
	-- 24890 // Elevator Swich "Fynn"
}

local serverLevers = Action()
function serverLevers.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local p = configStones[item.actionid]
	if not p then
		return true
	end

	if item.itemid == 2772 then
		local tile = p.stonePosition:getTile()
		if tile then
			local stone = tile:getItemById(p.blockItemID)
			if stone then
				stone:remove()
			end
		end

		local teleport = Game.createItem(p.portalID, 1, p.teleportPosition)
		if teleport then
			teleport:setDestination(p.destinationTeleport)
			p.teleportPosition:sendMagicEffect(CONST_ME_TELEPORT)
		end
	elseif item.itemid == 2773 then
		local tile = p.teleportPosition:getTile()
		if tile then
			local teleport = tile:getItemById(p.portalID)
			if teleport and teleport:isTeleport() then
				teleport:remove()
			end
		end
		p.teleportPosition:sendMagicEffect(CONST_ME_POFF)
		Game.createItem(p.blockItemID, 1, p.stonePosition)
	end
	return item:transform(item.itemid == 2772 and 2773 or 2772)
end

for index, value in pairs(configStones) do
	serverLevers:aid(index)
end
serverLevers:register()
