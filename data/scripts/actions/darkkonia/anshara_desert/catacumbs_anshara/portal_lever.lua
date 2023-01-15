local pitsOfInfernoMazeLever = Action()
function pitsOfInfernoMazeLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local portal = Tile(Position(800, 455, 9)):getItemById(1949)
	if not portal then
		local item = Game.createItem(1949, 1, Position(800, 455, 9))
		if item:isTeleport() then
			item:setDestination(Position(707, 462, 10))
		end
	else
		portal:remove()
	end
	item:transform(item.itemid == 2772 and 2773 or 2772)
	return true
end

pitsOfInfernoMazeLever:uid(24905)
pitsOfInfernoMazeLever:register()