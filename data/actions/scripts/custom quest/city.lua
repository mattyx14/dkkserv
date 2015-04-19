-- Fountains of Citizenship by Luxz
function onUse(cid, item, frompos, item2, topos)
venorepos = {x=1298, y=897, z=7}
edronpos = {x=1651, y=519, z=8}
carlinpos = {x=703, y=600, z=7}
abpos = {x=1075, y=454, z=7}
kazpos = {x=1075, y=454, z=7}
thaispos = {x=793, y=1014, z=7}
darapos = {x=1801, y=967, z=3}
hopepos = {x=1274, y=1214, z=7}
playerpos = frompos
if item.uid == 8000 then
doSendMagicEffect(playerpos,2)
doPlayerSetMasterPos(cid,venorepos)
doTeleportThing(cid,venorepos)
doSendMagicEffect(venorepos,10)
doPlayerSendTextMessage(cid,22,"You are now a citizen of Venore.")
end
if item.uid == 8001 then
doSendMagicEffect(playerpos,2)
doPlayerSetMasterPos(cid,edronpos)
doTeleportThing(cid,edronpos)
doSendMagicEffect(edronpos,10)
doPlayerSendTextMessage(cid,22,"You are now a citizen of Edron.")
end
if item.uid == 8002 then
doSendMagicEffect(playerpos,2)
doPlayerSetMasterPos(cid,carlinpos)
doTeleportThing(cid,carlinpos)
doSendMagicEffect(carlinpos,10)
doPlayerSendTextMessage(cid,22,"You are now a citizen of Carlin.")
end
if item.uid == 8003 then
doSendMagicEffect(playerpos,2)
doPlayerSetMasterPos(cid,abpos)
doTeleportThing(cid,abpos)
doSendMagicEffect(abpos,10)
doPlayerSendTextMessage(cid,22,"You are now a citizen of Ab Dendriel.")
end
if item.uid == 8004 then
doSendMagicEffect(playerpos,2)
doPlayerSetMasterPos(cid,kazpos)
doTeleportThing(cid,kazepos)
doSendMagicEffect(kazpos,10)
doPlayerSendTextMessage(cid,22,"You are now a citizen of Kazordoon.")
end
if item.uid == 8005 then
doSendMagicEffect(playerpos,2)
doPlayerSetMasterPos(cid,thaispos)
doTeleportThing(cid,thaispos)
doSendMagicEffect(thaispos,10)
doPlayerSendTextMessage(cid,22,"You are now a citizen of Thais.")
end
if item.uid == 8006 then
doSendMagicEffect(playerpos,2)
doPlayerSetMasterPos(cid,darapos)
doTeleportThing(cid,darapos)
doSendMagicEffect(darapos,10)
doPlayerSendTextMessage(cid,22,"You are now a citizen of Darashia.")
end
if item.uid == 8007 then
doSendMagicEffect(playerpos,2)
doPlayerSetMasterPos(cid,hopepos)
doTeleportThing(cid,hopepos)
doSendMagicEffect(hopepos,10)
doPlayerSendTextMessage(cid,22,"You are now a citizen of Port Hope.")
end
if item.itemid == 1945 then
doTransformItem(item.uid,1946)
elseif item.itemid == 1946 then
doTransformItem(item.uid,1945)
end

return 1
end