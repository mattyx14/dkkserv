local config = {
	[9006] = {flamePosition = Position(973, 1033, 7), toPosition = Position(973, 1034, 6), sacrificeItem = 7408}, -- wyvern fang
	[9007] = {flamePosition = Position(975, 949, 8), toPosition = Position(1034, 913, 8), sacrificeItem = 2430}, -- knight axe
	[9008] = {flamePosition = Position(569, 1256, 6), toPosition = Position(631, 1248, 6), sacrificeItem = 2434}, -- dragon hammer
}

function onAddItem(moveitem, tileitem, position)
	local targetCoalBasin = config[tileitem.uid]
	if not targetCoalBasin then
		return true
	end

	if moveitem.itemid ~= targetCoalBasin.sacrificeItem then
		position:sendMagicEffect(CONST_ME_POFF)
		return true
	end

	moveitem:remove()
	position:sendMagicEffect(CONST_ME_HITBYFIRE)

	Tile(targetCoalBasin.flamePosition):relocateTo(targetCoalBasin.toPosition)
	targetCoalBasin.toPosition:sendMagicEffect(CONST_ME_TELEPORT)
	return true
end
