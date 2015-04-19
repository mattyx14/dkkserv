function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 0 then
 return 0
end 
if item2.itemid == 1219 then
 doTransformItem(item2.uid,1220)
elseif item2.itemid == 1220 then
 doTransformItem(item2.uid,1219)
else
 return 0
end

return 1
end