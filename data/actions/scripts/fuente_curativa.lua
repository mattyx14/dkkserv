----------Script by Gm Kodiak----------------
function onUse(cid, item, frompos, item2, topos)
if item.actionid == 9000 and item.itemid == 6390 then
doPlayerSay(cid,"Ahhh!",2)
doSendMagicEffect(topos,1)
if getPlayerHealth(cid)<1555 then
DoPlayerAddHeal(cid,1555)
if getPlayerMana(cid)<1555 then
DoPlayerAddMana(cid,1555)
else
return 0
end
end
end
end