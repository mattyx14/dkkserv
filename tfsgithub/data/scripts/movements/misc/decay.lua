local movement = MoveEvent()

function movement.onStepIn(creature, item, position, fromPosition)
	item:transform(item.itemid + 1)
	item:decay()
	return true
end

movement:id(293, 461)
movement:register()
