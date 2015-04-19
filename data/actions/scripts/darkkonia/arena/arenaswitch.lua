function onUse(cid, item, frompos, item2, topos)

if getPlayerLevel(cid) > 120 then
if (os.time() - getPlayerStorageValue(cid,4826) > 240*1) then
arena = {x=1065, y=696, z=9}
doTeleportThing(cid,arena,0)
doSendMagicEffect(arena,10)
setPlayerStorageValue(cid,4826,os.time())
else
doPlayerSendCancel(cid,'Sorry somebody is here. Come back 1H.')
doSendMagicEffect(topos,2)
end
else
doSendMagicEffect(topos,2)
end

return 1
end
