function onUse(cid, item, frompos, item2, topos)
        hp = math.random(299, 300)
    
	if item2.itemid == 7519 then
        doPlayerRemoveItem(cid,2149,1)
   	doPlayerAddItem(cid,7761,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

	elseif item2.itemid == 7518 then
        doPlayerRemoveItem(cid,2149,1)
   	doPlayerAddItem(cid,7761,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

	elseif item2.itemid == 7516 then
        doPlayerRemoveItem(cid,2149,1)
   	doPlayerAddItem(cid,7761,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

	elseif item2.itemid == 7517 then
        doPlayerRemoveItem(cid,2149,1)
   	doPlayerAddItem(cid,7761,1)
        doPlayerAddMana(cid,-hp)
	doSendMagicEffect(topos, 13)

		
	else 
		return 0
	end
	return 1
end