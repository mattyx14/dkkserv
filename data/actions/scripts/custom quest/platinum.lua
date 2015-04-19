function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 2152 and item.type == 100 then
   		doRemoveItem(item.uid,99)
   		doTransformItem(item.uid,2160)
   		
   		elseif item.itemid == 2152 and item.type < 100 then
   		doRemoveItem(item.uid,1)
		doPlayerAddItem(cid,2148,100)
		
   		
   	end
	return 1   
end
