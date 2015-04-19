function onStepIn(cid, item, pos)
	Open_Trap = 7933
	Closed_Trap = 7932
	if (item.itemid == 7933) then
		doTransformItem(item.uid, 7932)
	else
		doTransformItem(item.uid, 7933)
	end
end