function onUse(cid, item, frompos, item2, topos)
pos = getPlayerPosition(cid)

summon = math.random(1, 3)

    if summon == 1 then
doPlayerSay(cid,"Rabbit :)",1)
doSummonCreature("Rabbit", pos)
doSendMagicEffect(topos,14)
doRemoveItem(item.uid,1)

    elseif summon == 2 then
doPlayerSay(cid,"Parrot! hehe",1)
doSummonCreature("Parrot", pos)
doSendMagicEffect(topos,13)
doRemoveItem(item.uid,1)

    elseif summon == 3 then
doPlayerSay(cid,"Aff :p",1)
doSummonCreature("Skunk", pos)
doSendMagicEffect(topos,12)
doRemoveItem(item.uid,1)

end
return 1
end