--Example ladder--

function onUse(cid, item, frompos, item2, topos)
npos = {x=topos.x, y=topos.y, z=topos.z}
if item2.itemid == 0 then
return 0
end

if item2.itemid == 293 then

npos.z = npos.z + 1
doTeleportThing(cid,npos)
else
return 0
end

return 1
end