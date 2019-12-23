local campfireStepIn = MoveEvent()
campfireStepIn.onStepIn = defaultStepIn
campfireStepIn:type("stepin")
campfireStepIn:id(1423, 1424, 1425)
campfireStepIn:register()

local campfireAddItem = MoveEvent()
campfireAddItem.onAddItem = defaultAddItem
campfireStepIn:type("additem")
campfireAddItem:id(1423, 1424, 1425)
campfireAddItem:register()
