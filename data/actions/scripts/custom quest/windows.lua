local openWindows = {6438, 6439, 6442, 6443, 6446, 6447, 6452, 6453, 6456, 6457, 6460, 6461, 6464, 6465, 6468, 6469, 6472, 6473, 6790, 6791, 7027, 7028, 7031, 7032}
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getTileHouseInfo(getPlayerPosition(cid)) ~= FALSE then
		if isInArray(openWindows, item.itemid) == TRUE then
			doTransformItem(item.uid, item.itemid - 2)
		else
			doTransformItem(item.uid, item.itemid + 2)
		end
		return TRUE
	end
	return FALSE
end