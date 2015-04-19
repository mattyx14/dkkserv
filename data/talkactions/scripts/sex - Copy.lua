---Masturb by Nandonalt

function onSay(cid, words, param)
playerPos = getPlayerPosition(cid)
storage = getPlayerStorageValue(cid,6675)

if (getPlayerLookDir(cid) == 1) then
chao = {x = playerPos.x + 1, y = playerPos.y, z = playerPos.z, stackpos = 1}
elseif (getPlayerLookDir(cid) == 2) then
chao = {x = playerPos.x, y = playerPos.y+ 1, z = playerPos.z, stackpos = 1}
elseif (getPlayerLookDir(cid) == 3) then
chao = {x = playerPos.x - 1, y = playerPos.y, z = playerPos.z, stackpos = 1}
else
chao = {x = playerPos.x, y = playerPos.y - 1, z = playerPos.z, stackpos = 1}
end

--------------------
if storage < 4 then
doCreatureSay(cid, "Ugh...Ugh...", TALKTYPE_ORANGE_1)
doCreatureSay(cid, "gich...gich...", TALKTYPE_ORANGE_1)
doSendMagicEffect(playerPos,2)
setPlayerStorageValue(cid,6675,storage+1)

elseif storage == 4 then
doCreatureSay(cid, "Aooooohhhhhhhhhoooh...", TALKTYPE_ORANGE_1)
doCreatureSay(cid, "Yeahhh...", TALKTYPE_ORANGE_1)
doAddCondition(cid, CONDITION_PARAM_STAT_SOULPERCENT)
doSendAnimatedText(chao,"Splash!",215)
splash = doCreateItem(2019,6,chao)
doSetItemSpecialDescription(splash,"It is sperm.")
doDecayItem(splash)
setPlayerStorageValue(cid,6675,storage-4)

end
return 1
end 