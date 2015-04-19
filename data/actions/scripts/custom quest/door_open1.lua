function onUse(cid, item, frompos, item2, topos)

	if item.actionid == 0 then
		doTransformItem(item.uid,item.itemid+1)
	else
		if item.actionid < 1000 then
			playerlevel = getPlayerLevel(cid)
			reqlevel = item.actionid - 100
			if playerlevel >= reqlevel then
			doTransformItem(item.uid,item.itemid+1)
			playerpos = getPlayerPosition(cid)
			if playerpos.x == topos.x then
			if playerpos.y > topos.y then
			doMoveCreature(cid, 0)
			else
			doMoveCreature(cid, 2)
			end
			elseif playerpos.x > topos.x then
			if playerpos.y > topos.y then
			doMoveCreature(cid, 6)
			elseif playerpos.y == topos.y then
			doMoveCreature(cid, 3)
			else
			doMoveCreature(cid, 4)
			end
			elseif playerpos.x < topos.x then
			if playerpos.y > topos.y then
			doMoveCreature(cid, 7)
			elseif playerpos.y == topos.y then
			doMoveCreature(cid, 1)
			else
			doMoveCreature(cid, 5)
			end
			end
			else
			doPlayerSendTextMessage(cid,22,"You need level " .. reqlevel .. " to pass this door.")
			end
		else
		doPlayerSendTextMessage(cid,22,"It is locked.")
		end
	end
	return 1

end