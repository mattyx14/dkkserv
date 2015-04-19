--by Lejin
function onUse(cid, item, frompos, item2, topos)

if item.uid ==1740 then
queststatus = getPlayerStorageValue(cid,2000)
if queststatus == 1 then
doPlayerSendTextMessage(cid,22,"This Chest is empty.")

else
doPlayerSendTextMessage(cid,22,"You found a complete wyzard addons.")
doSendMagicEffect(topos,12)
if getPlayerSex(cid) == 0 then
doPlayerAddAddon(cid, 149, 3)
setPlayerStorageValue(cid,2000,2)
else
doPlayerAddAddon(cid, 149, 3)
talk_state = 1
end
end
return 0
end
return 1
end 