

function onStepIn(cid, item, pos)
	doSendAnimatedText(pos, "Muahahaha!", 192)
	--doSendMagicEffect(pos, 15)
	return 1
end

function onStepOut(cid, item, pos)
	doPlayerSendTextMessage(cid, 25, "You Want Die!")
	return 1
end

function onAddItem(moveitem, tileitem, pos)
	if moveitem.itemid == 1949 then
		doTransformItem(moveitem.uid, 2239)
	end
	return 1
end

function onRemoveItem(moveitem, tileitem, pos)
	if moveitem.itemid == 2666 then
		doSendAnimatedText(pos, "mmm!", 163)
	end
	return	1
end