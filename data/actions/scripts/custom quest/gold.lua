function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 2148 and item.type == 100 then
   		doRemoveItem(item.uid,99)
   		doTransformItem(item.uid,2152)
   		
		elseif item.itemid == 2148 and item.type < 100 then
   		
   	end
   		return 1
	end
