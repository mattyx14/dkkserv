function onUse(cid, item, frompos, item2, topos)

normal = {2383,7383,7763}
fire = {7744,7745}
ice = {7763,7764,7765}
earth = {7854,7855}
energy = {7869,7870}

    if isInArray(normal, item2.itemid) == 1 then
        for a = 1, table.getn(normal) do
            if item2.itemid == normal[a] then
                fogo = fire[a]
                gelo = ice[a]
                terra = earth[a]
                energia = energy[a]
                break
            end
        end
        if item.itemid == 7760 then
            doSendMagicEffect(topos,15)
            doRemoveItem(item2.uid,1)
            doPlayerAddItem(cid,fogo,1000)
            doRemoveItem(item.uid,1)
        elseif item.itemid == 7759 then
            doSendMagicEffect(topos,43)
            doRemoveItem(item2.uid,1)
            doPlayerAddItem(cid,gelo,1000)
            doRemoveItem(item.uid,1)
        elseif item.itemid == 7761 then
            doSendMagicEffect(topos,45)
            doRemoveItem(item2.uid,1)
            doPlayerAddItem(cid,terra,1000)
            doRemoveItem(item.uid,1)
        elseif item.itemid == 7762 then
            doSendMagicEffect(topos,11)
            doRemoveItem(item2.uid,1)
            doPlayerAddItem(cid,energia,1000)
            doRemoveItem(item.uid,1)
        end
    return 1
    end
end