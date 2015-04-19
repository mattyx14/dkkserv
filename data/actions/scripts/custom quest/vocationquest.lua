function onUse(cid, item, frompos, item2, topos)
--by Dinho--

end1pos = {x=306, y=457, z=8, stackpos=255} --onde o player1 sera teleportado quando a alavanca for puxada
end2pos = {x=307, y=457, z=8, stackpos=255} --onde o player2 sera teleportado quando a alavanca for puxada
end3pos = {x=309, y=457, z=8, stackpos=255} --onde o player3 sera teleportado quando a alavanca for puxada
end4pos = {x=310, y=457, z=8, stackpos=255} --onde o player4 sera teleportado quando a alavanca for puxada

ppl1pos = {x=395, y=533, z=8, stackpos=253} --posicao do player1
ppl2pos = {x=398, y=530, z=8, stackpos=253} --posicao do player2
ppl3pos = {x=401, y=533, z=8, stackpos=253} --posicao do player3
ppl4pos = {x=398, y=536, z=8, stackpos=253} --posicao do player4
ppl1 = getThingfromPos(ppl1pos)
ppl2 = getThingfromPos(ppl2pos)
ppl3 = getThingfromPos(ppl3pos)
ppl4 = getThingfromPos(ppl4pos)

item1pos = {x=394, y=533, z=8, stackpos=255} --item1pos
item2pos = {x=398, y=529, z=8, stackpos=255} --item2pos
item3pos = {x=402, y=533, z=8, stackpos=255} --item3pos
item4pos = {x=398, y=537, z=8, stackpos=255} --item4pos
item1 = getThingfromPos(item1pos)
item2 = getThingfromPos(item2pos)
item3 = getThingfromPos(item3pos)
item4 = getThingfromPos(item4pos)


if item.uid == 9010 and item.itemid == 1945 and item1.itemid == 2674 and item2.itemid == 2455 and item3.itemid == 2175 and item4.itemid == 2376 and ppl1.itemid > 0 and ppl2.itemid > 0 and ppl3.itemid > 0 and ppl4.itemid > 0 and getPlayerVocation(ppl1.uid) == 2 and getPlayerVocation(ppl2.uid) == 3 and getPlayerVocation(ppl3.uid) == 1 and getPlayerVocation(ppl4.uid) == 4 then

   doRemoveItem(item1.uid,1)
   doSendMagicEffect(item1pos,13)
   doRemoveItem(item2.uid,1)
   doSendMagicEffect(item2pos,13)
   doRemoveItem(item3.uid,1)
   doSendMagicEffect(item3pos,13)
   doRemoveItem(item4.uid,1)
   doSendMagicEffect(item4pos,13)

   doTeleportThing(ppl1.uid,end1pos)
   doSendMagicEffect(ppl1pos,10)
   doSendMagicEffect(end1pos,10)
   doTeleportThing(ppl2.uid,end2pos)
   doSendMagicEffect(ppl2pos,10)
   doSendMagicEffect(end2pos,10)
   doTeleportThing(ppl3.uid,end3pos)
   doSendMagicEffect(ppl3pos,10)
   doSendMagicEffect(end3pos,10)
   doTeleportThing(ppl4.uid,end4pos)
   doSendMagicEffect(ppl4pos,10)
   doSendMagicEffect(end4pos,10)

   doTransformItem(item.uid,item.itemid+1)

elseif item.uid == 9010 and item.itemid == 1946 then
   doTransformItem(item.uid,item.itemid-1)
else
   return 0
end

return 1

end