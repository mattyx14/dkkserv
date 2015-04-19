function onUse(cid, item, frompos, item2, topos)
npos = {x=topos.x, y=topos.y, z=topos.z}

if item.itemid == 1868 then
npos.y = npos.y - 1
doCreateItem(1867, 1, npos)

elseif item.itemid == 1856 then
npos.y = npos.y - 1
doCreateItem(1855, 1, npos)


elseif item.itemid == 1859 then
npos.y = npos.y - 1
doCreateItem(1858, 1, npos)

elseif item.itemid == 1862 then
npos.y = npos.y - 1
doCreateItem(1861, 1, npos)

elseif item.itemid == 1865 then
npos.y = npos.y - 1
doCreateItem(1864, 1, npos)

elseif item.itemid == 1871 then
npos.y = npos.y - 1
doCreateItem(1870, 1, npos)

elseif item.itemid == 1879 then
npos.y = npos.y - 1
doCreateItem(1878, 1, npos)
else
return 0
end
doRemoveItem(item.uid,1)
return 1
end