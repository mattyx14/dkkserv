function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 1337 and item.itemid == 1945 then
		local player1pos = {x=11, y=11, z=1, stackpos=253} --- all the things like this are players pos (where they need 2 be to get tped)
		local player1 = getThingfromPos(player1pos)

		local player2pos = {x=11, y=11, z=1, stackpos=253}
		local player2 = getThingfromPos(player2pos)

		local player3pos = {x=11, y=11, z=1, stackpos=253}
		local player3 = getThingfromPos(player3pos)

		local player4pos = {x=11, y=11, z=1, stackpos=253}
		local player4 = getThingfromPos(player4pos)

		local player5pos = {x=11, y=11, z=1, stackpos=253}
		local player5 = getThingfromPos(player5pos)

		local player6pos = {x=11, y=11, z=1, stackpos=253}
		local player6 = getThingfromPos(player6pos)

		local player7pos = {x=11, y=11, z=1, stackpos=253}
		local player7 = getThingfromPos(player7pos)

		local player8pos = {x=11, y=11, z=1, stackpos=253}
		local player8 = getThingfromPos(player8pos)


		if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 and player5.itemid > 0 and player6.itemid > 0 and player7.itemid > 0 and player8.itemid > 0 then
			local queststatus1 = getPlayerStorageValue(player1.uid,7000) -- dont change this.
			local queststatus2 = getPlayerStorageValue(player2.uid,7000)
			local queststatus3 = getPlayerStorageValue(player3.uid,7000)
			local queststatus4 = getPlayerStorageValue(player4.uid,7000)
			local queststatus5 = getPlayerStorageValue(player5.uid,7000)
			local queststatus6 = getPlayerStorageValue(player6.uid,7000)
			local queststatus7 = getPlayerStorageValue(player7.uid,7000)
			local queststatus8 = getPlayerStorageValue(player8.uid,7000)

			if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 if queststatus5 == -1 and queststatus6 == -1 and queststatus7 == -1 and queststatus8 == -1 then
			
				local nplayer1pos = {x=11, y=11, z=1, stackpos=253} -- pos where players are gonna get tped
				local nplayer2pos = {x=11, y=11, z=1, stackpos=253}
				local nplayer3pos = {x=11, y=11, z=1, stackpos=253}
				local nplayer4pos = {x=11, y=11, z=1, stackpos=253}
				local nplayer5pos = {x=11, y=11, z=1, stackpos=253}
				local nplayer6pos = {x=11, y=11, z=1, stackpos=253}
				local nplayer7pos = {x=11, y=11, z=1, stackpos=253}
				local nplayer8pos = {x=11, y=11, z=1, stackpos=253}
			
				local demon1pos = {x=11, y=11, z=1, stackpos=253} -- position for demons
				local demon2pos = {x=11, y=11, z=1, stackpos=253}
				local demon3pos = {x=11, y=11, z=1, stackpos=253}
				local demon4pos = {x=11, y=11, z=1, stackpos=253}
				local demon5pos = {x=11, y=11, z=1, stackpos=253}
				local demon6pos = {x=11, y=11, z=1, stackpos=253}

				doSendMagicEffect(player1pos,2) -- dont change this.
				doSendMagicEffect(player2pos,2)
				doSendMagicEffect(player3pos,2)
				doSendMagicEffect(player4pos,2)
				doSendMagicEffect(player5pos,2)
				doSendMagicEffect(player6pos,2)
				doSendMagicEffect(player7pos,2)
				doSendMagicEffect(player8pos,2)
				
				doSummonCreature("demon", demon1pos) -- dont change this, unless u want a new monster instead of demon.
				doSummonCreature("demon", demon2pos)
				doSummonCreature("demon", demon3pos)
				doSummonCreature("demon", demon4pos)
				doSummonCreature("demon", demon5pos)
				doSummonCreature("demon", demon6pos)

				doTeleportThing(player1.uid,nplayer1pos) -- dont change this.
				doTeleportThing(player2.uid,nplayer2pos)
				doTeleportThing(player3.uid,nplayer3pos)
				doTeleportThing(player4.uid,nplayer4pos)
				doTeleportThing(player5.uid,nplayer1pos)
				doTeleportThing(player6.uid,nplayer2pos)
				doTeleportThing(player7.uid,nplayer3pos)
				doTeleportThing(player8.uid,nplayer4pos)

				doSendMagicEffect(nplayer1pos,10) -- dont change this.
				doSendMagicEffect(nplayer2pos,10)
				doSendMagicEffect(nplayer3pos,10)
				doSendMagicEffect(nplayer4pos,10)
				doSendMagicEffect(nplayer5pos,10)
				doSendMagicEffect(nplayer6pos,10)
				doSendMagicEffect(nplayer7pos,10)
				doSendMagicEffect(nplayer8pos,10)
			else
				doPlayerSendCancel(cid,"Somebody in your team already did this quest.")
			end
		else
			doPlayerSendCancel(cid,"You need 8 players in your team.")
		end
	end
	return 1
end