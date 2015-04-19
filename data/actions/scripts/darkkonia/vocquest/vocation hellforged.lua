function onUse(cid, item, frompos, item2, topos)
prize1 = 2184
prize2 = 2662
prize3 = 8927
prize4 = 8924
qstat = getPlayerStorageValue(cid,10504)
pvoc = getPlayerVocation(cid)

if qstat == -1 then

if pvoc == 1 or pvoc == 5 or pvoc == 9 or pvoc == 13 or pvoc == 17 or pvoc == 21 then
doPlayerSendTextMessage(cid, 22, "You have found a "..getItemNameById(prize1)..".")
doPlayerAddItem(cid, prize1, 1)
setPlayerStorageValue(cid,10504,1)
return 1

elseif pvoc == 2 or pvoc == 6 or pvoc == 10 or pvoc == 14 or pvoc == 18 or pvoc == 22 then
doPlayerSendTextMessage(cid, 22, "You have found a "..getItemNameById(prize2)..".")
doPlayerAddItem(cid, prize2, 1)
setPlayerStorageValue(cid,10504,1)
return 1

elseif pvoc == 3 or pvoc == 7 or pvoc == 11 or pvoc == 15 or pvoc == 19 or pvoc == 23 then
doPlayerSendTextMessage(cid, 22, "You have found a "..getItemNameById(prize2)..".")
doPlayerAddItem(cid, prize3, 1)
setPlayerStorageValue(cid,10504,1)
return 1

elseif pvoc == 4 or pvoc == 8 or pvoc == 12 or pvoc == 16 or pvoc == 20 or pvoc == 24 then
doPlayerSendTextMessage(cid, 22, "You have found a "..getItemNameById(prize2)..".")
doPlayerAddItem(cid, prize4, 1)
setPlayerStorageValue(cid,10504,1)
return 1
end
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
return 1
end
end