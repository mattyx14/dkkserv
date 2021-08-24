local pitsOfInfernoMazeLever = Action()
function pitsOfInfernoMazeLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local portal = Tile(Position(800, 455, 9)):getItemById(1387)
	if not portal then
		local item = Game.createItem(1387, 1, Position(800, 455, 9))
		if item:isTeleport() then
			item:setDestination(Position(707, 462, 10))
		end
	else
		portal:remove()
	end
	item:transform(item.itemid == 1945 and 1946 or 1945)
	return true
end

pitsOfInfernoMazeLever:uid(24905)
pitsOfInfernoMazeLever:register()