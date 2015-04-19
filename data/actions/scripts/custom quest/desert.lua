function onUse(cid, item, frompos, item2, topos)
if item.uid == 8010 then
 if item.itemid == 1946 then

vocation_check = 0

 player1pos = {x=998, y=982, z=10, stackpos=253}
 player1 = getThingfromPos(player1pos)

 player2pos = {x=996, y=983, z=10, stackpos=253}
 player2 = getThingfromPos(player2pos)

 player3pos = {x=998, y=985, z=10, stackpos=253}
 player3 = getThingfromPos(player3pos)

 player4pos = {x=1000, y=983, z=10, stackpos=253}
 player4 = getThingfromPos(player4pos)

if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then

 if getPlayerVocation(player1.uid) == 3 then
 vocation_check = vocation_check + 1
 doPlayerSendTextMessage(cid,22,"Paladin on north.")
 end


 if getPlayerVocation(player2.uid) == 2 then
 vocation_check = vocation_check + 1
 doPlayerSendTextMessage(cid,22,"Druid on west.")
 end

 if getPlayerVocation(player3.uid) == 4 then
 vocation_check = vocation_check + 1
 doPlayerSendTextMessage(cid,22,"Knight on south.")
 end

 if getPlayerVocation(player4.uid) == 1 then
 vocation_check = vocation_check + 1
 doPlayerSendTextMessage(cid,22,"Sorcerer on east.")
 end




  player1level = getPlayerLevel(player1.uid)
  player2level = getPlayerLevel(player2.uid)
  player3level = getPlayerLevel(player3.uid)
  player4level = getPlayerLevel(player4.uid)

  questlevel = 20

  if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and player4level >= questlevel then

	  queststatus1 = getPlayerStorageValue(player1.uid,20)
	  queststatus2 = getPlayerStorageValue(player2.uid,20)
	  queststatus3 = getPlayerStorageValue(player3.uid,20)
	  queststatus4 = getPlayerStorageValue(player4.uid,20)

	  if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then

	nplayer1pos = {x=999, y=984, z=11}
	nplayer2pos = {x=998, y=984, z=11}
	nplayer3pos = {x=999, y=985, z=11}
	nplayer4pos = {x=998, y=985, z=11}

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
  
  setPlayerStorageValue(player1.uid,20,1)
  setPlayerStorageValue(player2.uid,20,1)
  setPlayerStorageValue(player3.uid,20,1)
  setPlayerStorageValue(player4.uid,20,1)

	 doTransformItem(item.uid,1945)

	else
	 doPlayerSendCancel(cid,"Someone has already done this quest")
	 doSendMagicEffect(topos,2)
	end
   else
	doPlayerSendCancel(cid,"Your level is too low")
	doSendMagicEffect(topos,2)
   end
  else
  doPlayerSendCancel(cid,"You need 4 players in your team.")
  doSendMagicEffect(topos,2)
  end
  doTransformItem(item.uid,1945)
 end

if item.itemid == 1945 then
doTransformItem(item.uid,1946)
end

end
 return 1
end
