local clickTeleport = {
	[24909] = Position(853, 1050, 10), -- Mirror Conjurer Outfit,
	[24910] = Position(1529, 910, 1), -- Zevelon Duskbringer
	[24911] = Position(1529, 892, 1), -- Sir Valorcrest
	[24912] = Position(1556, 910, 1), -- Diblis the Fair
	[24913] = Position(1556, 892, 1), -- Arachir the Ancient One
	[24914] = Position(618, 376, 8), -- Enter Portal Volcano
	[24915] = Position(627, 376, 7), -- Exit Portal Volcano
--	[24916] = Position(1542, 875, 1), -- Reserved to Dracula /actions/quest/outfits/portalDracula.lua
}

local itemPortal = Action()
function itemPortal.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local targetPosition = clickTeleport[item.actionid]
	if not targetPosition then
		return true
	end

	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	player:teleportTo(targetPosition)
	player:getPosition():sendMagicEffect(CONST_ME_FIREAREA)
	return true
end

for index, value in pairs(clickTeleport) do
	itemPortal:aid(index)
end

itemPortal:register()
