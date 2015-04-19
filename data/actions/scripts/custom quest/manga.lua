function onUse(cid, item, frompos, item2, topos)

	if item.itemid == 5157 then		-- Manga Fruit tree
		doTransformItem(item.uid, 5156)
		doDecayItem(item.uid)
		doPlayerAddItem(cid,5097,5)
	end

	return 1
end
