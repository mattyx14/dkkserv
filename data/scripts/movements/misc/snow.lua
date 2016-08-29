local moveevent = MoveEvent()

function moveevent.onStepOut(creature, item, position, fromPosition)
	if creature:isPlayer() and creature:isInGhostMode() then
		return true
	end

	if item:getId() == 670 then
		item:transform(6594)
	else
		item:transform(item.itemid + 15)
	end
	item:decay()
	return true
end

moveevent:id(670)
for i = 6580, 6593 do
	moveevent:id(i)
end
moveevent:register()
