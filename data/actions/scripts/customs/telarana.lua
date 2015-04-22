function onUse(cid, item, frompos, item2, topos)
	if item.itemid == 5879 and item.type == 10 then
		doRemoveItem(item.uid, 9)
		doTransformItem(item.uid, 5886)
	elseif item.itemid == 5879 and item.type < 10 then
	end

	return true
end
