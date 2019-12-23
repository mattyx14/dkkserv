local increase = Action()
local decrease = Action()

function increase.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	item:transform(item:getId() + 1)
	return true
end

function decrease.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	item:transform(item:getId() - 1)
	return true
end

increase:id(1873, 1875, 2162, 3947, 1479, 2037, 2039, 2058, 2060, 2066, 2068, 2064, 2578, 2096, 1786, 1788, 1790, 1792, 1634, 1636, 1638, 1640, 5812, 6489, 7058, 8684, 8686, 8688, 8690, 9575, 9577, 9579, 9581, 9747, 9749, 19691)
decrease:id(1874, 1876, 2163, 3948, 1480, 2038, 2040, 2059, 2061, 2067, 2069, 2065, 2097, 1787, 1789, 1791, 1793, 1635, 1637, 1639, 1641, 5813, 6490, 7059, 8685, 8687, 8689, 8691, 9576, 9578, 9580, 9582, 9748, 9750, 19692)
increase:register()
decrease:register()




