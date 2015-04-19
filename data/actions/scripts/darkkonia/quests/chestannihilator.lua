function onUse(cid, item, frompos, item2, topos)
palanca = 1946
uid = item.uid
demon1 = {x=244, y=178, z=9}
demon2 = {x=248, y=179, z=9}
demon3 = {x=244, y=180, z=9}
demon4 = {x=248, y=181, z=9}
demon5 = {x=246, y=182, z=9}

playerpos1 = {x=195, y=117, z=9, stackpos=253} <- Las stackpos tienen que estar en 253
playerpos2 = {x=195, y=116, z=9, stackpos=253}
playerpos3 = {x=195, y=115, z=9, stackpos=253}
playerpos4 = {x=195, y=114, z=9, stackpos=253}

nuevapos1 = {x=246, y=178, z=9}
nuevapos2 = {x=246, y=179, z=9}
nuevapos3 = {x=246, y=181, z=9}
nuevapos4 = {x=246, y=182, z=9}

player1 = getThingfromPos(player1pos)
player1lvl = getPlayerLevel(player1.uid)
player2 = getThingfromPos(player2pos)
player2lvl = getPlayerLevel(player2.uid)
player3 = getThingfromPos(player3pos)
player3lvl = getPlayerLevel(player3.uid)
player4 = getThingfromPos(player4pos)
player4lvl = getPlayerLevel(player4.uid)

if item.uid == uid and item.itemid == palanca then
if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then
if player1lvl >= 100 and player2lvl >= 100 and player3lvl >= 100 and player4lvl >= 100 then
doTeleportThing(player1.uid,nuevapos1)
doTeleportThing(player2.uid,nuevapos2)
doTeleportThing(player3.uid,nuevapos3)
doTeleportThing(player4.uid,nuevapos4)

doSummonCreature("Demon", demon1)
doSummonCreature("Demon", demon2)
doSummonCreature("Demon", demon3)
doSummonCreature("Demon", demon4)
doSummonCreature("Demon", demon5)
doSummonCreature("Demon", demon6)

else
doPlayerSendTextMessage(cid, 22, "todos deben ser lvl 100 o mas")
end
else
doPlayerSendTextMessage(cid, 22, "deben ser 4 jugadores")
end
end
end