---Party Hat by Rike
function onUse(cid, item, frompos, item2, topos)

ppos = getPlayerPosition(cid)

---Party Hat
if item.itemid == 6578 and getPlayerSlotItem(cid,1).itemid == 6578 then
doSendMagicEffect(ppos,27)
elseif getPlayerSlotItem(cid,1).itemid ~= 6578 then
doPlayerSendCancel(cid,"You cannot use this object.")
end
return 1
end