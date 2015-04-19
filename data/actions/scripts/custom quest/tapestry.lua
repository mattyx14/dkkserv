function onUse(cid, item, frompos, item2, topos)
npos = {x=topos.x, y=topos.y, z=topos.z}

if frompos.x == 65535 then
doPlayerSendCancel(cid, "Sorry,no posible")
return 1
end
if item.itemid == 1869 then
npos.x = npos.x - 1
doCreateItem(1868, 1, npos)
elseif item.itemid == 1857 then
npos.x = npos.x - 1
doCreateItem(1856, 1, npos)
elseif item.itemid == 1860 then
npos.x = npos.x - 1
doCreateItem(1859, 1, npos)
elseif item.itemid == 1863 then
npos.x = npos.x - 1
doCreateItem(1862, 1, npos)
elseif item.itemid == 1866 then
npos.x = npos.x - 1
doCreateItem(1865, 1, npos)
elseif item.itemid == 1872 then
npos.x = npos.x - 1
doCreateItem(1871, 1, npos)
elseif item.itemid == 1880 then
npos.x = npos.x - 1
doCreateItem(1879, 1, npos)
else
return 0
end
doRemoveItem(item.uid,1)
return 1
end