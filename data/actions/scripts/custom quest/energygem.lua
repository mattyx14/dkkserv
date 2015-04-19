function onUse(cid, item, frompos, item2, topos)
        hp = math.random(299, 300)
    
	if item2.itemid == 7513 then
        doPlayerRemoveItem(cid,2150,1)
   	doPlayerAddItem(cid,7762,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

	elseif item2.itemid == 7512 then
        doPlayerRemoveItem(cid,2150,1)
   	doPlayerAddItem(cid,7762,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

	elseif item2.itemid == 7514 then
        doPlayerRemoveItem(cid,2150,1)
   	doPlayerAddItem(cid,7762,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

	elseif item2.itemid == 7515 then
        doPlayerRemoveItem(cid,2150,1)
   	doPlayerAddItem(cid,7762,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

		
	else 
		return 0
	end
	return 1
end