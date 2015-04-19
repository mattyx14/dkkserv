--Action de inteligencia by Rogui--
function onUse(cid, item, frompos, item2, topos)

if item.itemid == 5808 then

rand = math.random(1,9)

if rand == 1 then
doPlayerAddSkillTry(cid,0,1000)
doRemoveItem(item.uid,1)
elseif rand == 2 then
doPlayerAddSkillTry(cid,1,1000)
doRemoveItem(item.uid,1)
elseif rand == 3 then
doPlayerAddSkillTry(cid,2,1000)
doRemoveItem(item.uid,1)
elseif rand == 4 then
doPlayerAddSkillTry(cid,3,1000)
doRemoveItem(item.uid,1)
elseif rand == 5 then
doPlayerAddSkillTry(cid,4,1000)
doRemoveItem(item.uid,1)
elseif rand == 6 then
doPlayerAddSkillTry(cid,5,1000)
doRemoveItem(item.uid,1)
elseif rand == 7 then
doPlayerAddSkillTry(cid,6,1000)
doRemoveItem(item.uid,1)
elseif rand == 8 then
doPlayerSendTextMessage(cid,22,'Tu eres un burro, y tus skill no aumentaran!')
elseif rand == 9 then
doPlayerSendTextMessage(cid,22,'Tu eres un burro, y tus skill no aumentaran!')
end
end
return 1
end