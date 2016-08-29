local fieldStepIn = MoveEvent()
fieldStepIn.onStepIn = defaultStepIn
fieldStepIn:type("stepin")
for i = 1487, 1507 do
	fieldStepIn:id(i)
end
fieldStepIn:id(7359, 20669)
fieldStepIn:register()

local fieldAddItem = MoveEvent()
fieldAddItem.onAddItem = defaultAddItem
fieldAddItem:type("additem")
for i = 1487, 1507 do
	fieldAddItem:id(i)
end
fieldAddItem:id(7360, 20670)
fieldAddItem:register()
