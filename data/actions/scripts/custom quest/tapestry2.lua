function onUse(cid, item, frompos, item2, topos)


if item.itemid == 1867 then

doPlayerAddItem(cid,1869,1)
elseif item.itemid == 1855 then

doPlayerAddItem(cid,1857,1)
elseif item.itemid == 1858 then

doPlayerAddItem(cid,1860,1)
elseif item.itemid == 1861 then

doPlayerAddItem(cid,1863,1)
elseif item.itemid == 1864 then

doPlayerAddItem(cid,1866,1)
elseif item.itemid == 1870 then

doPlayerAddItem(cid,1872,1)
elseif item.itemid == 1879 then

doPlayerAddItem(cid,1880,1)
else
return 0
end
doRemoveItem(item.uid,1)
return 1
end