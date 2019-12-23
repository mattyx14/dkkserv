local scythe = Action()

function scythe.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not isInArray({2550, 10513}, item.itemid) then
		return false
	end

	if target.itemid == 2739 then
		target:transform(2737)
		target:decay()
		Game.createItem(2694, 1, toPosition)
		return true
	end

	return destroyItem(player, target, toPosition)
end

scythe:id(2550)
scythe:register()
