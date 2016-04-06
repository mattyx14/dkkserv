local config = {
	[9007] = {flamePosition = Position(975, 949, 8), toPosition = Position(1034, 913, 8)}
}

function onAddItem(moveitem, tileitem, position)
	local targetCoalBasin = config[tileitem.uid]
	if not targetCoalBasin then
		return true
	end

	if moveitem.itemid ~= 2430 then
		position:sendMagicEffect(CONST_ME_POFF)
		return true
	end

	moveitem:remove()
	position:sendMagicEffect(CONST_ME_HITBYFIRE)

	Tile(targetCoalBasin.flamePosition):relocateTo(targetCoalBasin.toPosition)
	targetCoalBasin.toPosition:sendMagicEffect(CONST_ME_TELEPORT)
	return true
end
