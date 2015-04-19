function onUse(cid, item, frompos, item2, topos)
        hp = math.random(299, 300)
    
	if item2.itemid == 7507 then
        doPlayerRemoveItem(cid,2147,1)
   	doPlayerAddItem(cid,7760,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

	elseif item2.itemid == 7506 then
        doPlayerRemoveItem(cid,2147,1)
   	doPlayerAddItem(cid,7760,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

	elseif item2.itemid == 7505 then
        doPlayerRemoveItem(cid,2147,1)
   	doPlayerAddItem(cid,7760,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

	elseif item2.itemid == 7504 then
        doPlayerRemoveItem(cid,2147,1)
   	doPlayerAddItem(cid,7760,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

		
	else 
		return 0
	end
	return 1
end