function onUse(cid, item, frompos, item2, topos)
-- Put these in action.
-- <action itemid="1245" script="vocationdoor.lua" />
-- <action itemid="1247" script="vocationdoor.lua" />
-- <action itemid="1259" script="vocationdoor.lua" />
-- <action itemid="1261" script="vocationdoor.lua" />
-- <action itemid="1227" script="vocationdoor.lua" />
-- <action itemid="1229" script="vocationdoor.lua" />
-- Make a door in your map and give it the actionid that you
-- want the vocation requirement to be. 1 for sorc etc..
-- Edit the variables below so the itemid for the horizontal and
-- vertical level doors that your server uses are correct.
-- Edit these values so they match your server's item ids --
horid1 = 1247 -- Itemid of an horizontal closed level door
verid1 = 1245 -- Itemid of an vertical closed level door
horid2 = 1261 -- Itemid of an horizontal closed level door
verid2 = 1259 -- Itemid of an vertical closed level door
horid3 = 1229 -- Itemid of an horizontal closed level door
verid3 = 1227 -- Itemid of an vertical closed level door
 -- Stop editing now, unless you know what you're doing --
playerVoc = getPlayerVocation(cid)
playerpos = getPlayerPosition(cid)
doorpos = frompos
Vocreq = item.actionid
if (Vocreq < 8 or Vocreq == nil) then
doPlayerSendTextMessage(cid, 16, "There has been an error. Please contact a gamemaster. Error: level requirement is not positive")
else
if (item.itemid == horid1) then
if (playerpos.y > doorpos.y) then
newpos = {x = doorpos.x, y = (doorpos.y - 1), z = doorpos.z}
else
newpos = {x = doorpos.x, y = (doorpos.y + 1), z = doorpos.z}
end
elseif (item.itemid == verid1) then
if (playerpos.x > doorpos.x) then
newpos = {x = (doorpos.x - 1), y = doorpos.y, z = doorpos.z}
            else
newpos = {x = (doorpos.x + 1), y = doorpos.y, z = doorpos.z}
end
elseif (item.itemid == horid2) then
if (playerpos.y > doorpos.y) then
newpos = {x = doorpos.x, y = (doorpos.y - 1), z = doorpos.z}
else
newpos = {x = doorpos.x, y = (doorpos.y + 1), z = doorpos.z}
end
elseif (item.itemid == verid2) then
if (playerpos.x > doorpos.x) then
newpos = {x = (doorpos.x - 1), y = doorpos.y, z = doorpos.z}
else
newpos = {x = (doorpos.x + 1), y = doorpos.y, z = doorpos.z}
end
elseif (item.itemid == horid3) then
if (playerpos.y > doorpos.y) then
newpos = {x = doorpos.x, y = (doorpos.y - 1), z = doorpos.z}
else
newpos = {x = doorpos.x, y = (doorpos.y + 1), z = doorpos.z}
end
elseif (item.itemid == verid3) then
if (playerpos.x > doorpos.x) then
newpos = {x = (doorpos.x - 1), y = doorpos.y, z = doorpos.z}
else
newpos = {x = (doorpos.x + 1), y = doorpos.y, z = doorpos.z}
end
else
doPlayerSendTextMessage(cid, 16, "There has been an error. Please contact a gamemaster. Error: invalid item id")
end
if (playerVoc >= Vocreq) then
doTeleportThing(cid, newpos)
doSendMagicEffect(playerpos, 14)
doSendMagicEffect(newpos, 14)
doPlayerSendTextMessage(cid, 22, "Your vocation is right to pass.")
else
doPlayerSendTextMessage(cid, 22, "Your are not vocation " .. Vocreq..".")
end
end
return 1
end