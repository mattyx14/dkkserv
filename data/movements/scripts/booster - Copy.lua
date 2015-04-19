function onEquip(cid, item)
        setPlayerExtraExpRate(cid, 2)
end

function onDeEquip(cid, item)
 	setPlayerExtraExpRate(cid, 0)
end
