function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 2239 and item.type == 1 then
   		doRemoveItem(item.uid,1)
   		doTransformItem(item.uid,7564)
   		
		elseif item.itemid == 2239 and item.type < 1 then
   		
   	end
   		return 1
	end
