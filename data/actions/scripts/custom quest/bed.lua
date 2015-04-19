max_sleep = 300
sleep1 = 150

function onUse(cid, item, frompos, item2, topos)

if (getPlayerFood(cid) + sleep1 > max_sleep) then
doPlayerSendCancel(cid,"You cannot sleep.")
return 1
end

doSendMagicEffect(frompos,12)
doPlayerSendTextMessage(cid,22,"Good Night")
doPlayerSay(cid,"Ohhhhhhhh!!!",16)
doPlayerAddHealth(cid,15)
doPlayerAddMana(cid,15)
doPlayerFeed(cid,sleep1)
doPlayerSendTextMessage(cid,22,"You have been Sleeping.")
return 1
end