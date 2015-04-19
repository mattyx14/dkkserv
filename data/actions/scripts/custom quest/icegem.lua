function onUse(cid, item, frompos, item2, topos)
        hp = math.random(299, 300)
    
	if item2.itemid == 7511 then
        doPlayerRemoveItem(cid,2146,1)
   	doPlayerAddItem(cid,7759,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

	elseif item2.itemid == 7508 then
        doPlayerRemoveItem(cid,2146,1)
   	doPlayerAddItem(cid,7759,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

	elseif item2.itemid == 7509 then
        doPlayerRemoveItem(cid,2146,1)
   	doPlayerAddItem(cid,7759,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

	elseif item2.itemid == 7510 then
        doPlayerRemoveItem(cid,2146,1)
   	doPlayerAddItem(cid,7759,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

		
	else 
		return 0
	end
	return 1
end