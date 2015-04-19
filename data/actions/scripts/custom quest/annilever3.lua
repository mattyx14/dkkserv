-- annihilator lever

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 8001 and item.itemid == 1945 then
		player1pos = {x=851, y=1614, z=8, stackpos=253}
		player1 = getThingfromPos(player1pos)

		player2pos = {x=843, y=1606, z=8, stackpos=253}
		player2 = getThingfromPos(player2pos)

		player3pos = {x=851, y=1598, z=8, stackpos=253}
		player3 = getThingfromPos(player3pos)

		player4pos = {x=859, y=1606, z=8, stackpos=253}
		player4 = getThingfromPos(player4pos)


		if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then
			queststatus1 = getPlayerStorageValue(player1.uid,8001)
			queststatus2 = getPlayerStorageValue(player2.uid,8001)
			queststatus3 = getPlayerStorageValue(player3.uid,8001)
			queststatus4 = getPlayerStorageValue(player4.uid,8001)

			if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then
				nplayer1pos = {x=502, y=614, z=9}
				nplayer2pos = {x=508, y=614, z=9}
				nplayer3pos = {x=502, y=603, z=9}
				nplayer4pos = {x=508, y=603, z=9}

				doSendMagicEffect(player1pos,2)
				doSendMagicEffect(player2pos,2)
				doSendMagicEffect(player3pos,2)
				doSendMagicEffect(player4pos,2)

				doTeleportThing(player1.uid,nplayer1pos)
				doTeleportThing(player2.uid,nplayer2pos)
				doTeleportThing(player3.uid,nplayer3pos)
				doTeleportThing(player4.uid,nplayer4pos)

				doSendMagicEffect(nplayer1pos,10)
				doSendMagicEffect(nplayer2pos,10)
				doSendMagicEffect(nplayer3pos,10)
				doSendMagicEffect(nplayer4pos,10)

				doTransformItem(item.uid,item.itemid+1)
			else
				doPlayerSendCancel(cid,"Somebody in your team has already done this quest.")
			end
		else
			doPlayerSendCancel(cid,"You need four players for this quest.")
		end

	elseif item.uid ==7000 and item.itemid == 1946 then
		if getPlayerAccess(cid) > 0 then
			doTransformItem(item.uid,item.itemid-1)
		else
			doPlayerSendCancel(cid,"Sorry, not possible.")
		end
	else
		return 0
	end

	return 1
end
