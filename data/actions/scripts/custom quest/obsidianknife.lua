--Action By Mokerhamer based on evolutions 0.7.7
--Script is from the server Kansloos.sytes.net
--Please send/post bug reports to me as an pm or in the release post!
--This script allowes you to skin Minotaurs, Dragons, Dragon Lords and Bone Beasts.
--I made this script on the information that i could find on tibia.erig.net
function onUse(cid, item, frompos, item2, topos)
if item2.itemid == 0 then
return 0
end
---------------------------------All the minotaurs--------------
random = math.random(1,15)
if getPlayerLevel(cid) >= 1 then
if item2.itemid == 2830 or item2.itemid == 2871 or item2.itemid == 2866 or item2.itemid == 2876 and random == 1 then
doSendMagicEffect(topos, 12)
doTransformItem(item2.uid,item2.itemid+1)
doPlayerAddItem(cid,5878,1)
elseif item2.itemid == 2830 or item2.itemid == 2871 or item2.itemid == 2866 or item2.itemid == 2876 and random >= 2 then
doSendMagicEffect(topos, 3)
doTransformItem(item2.uid,item2.itemid+1)
end
end
---------------------------------All the Lizards--------------
random = math.random(1,15)
if getPlayerLevel(cid) >= 1 then
if item2.itemid == 4259 or item2.itemid == 4262 or item2.itemid == 4251 and random == 1 then
doSendMagicEffect(topos, 12)
doTransformItem(item2.uid,itemid+1)
doPlayerAddItem(cid,5876,1)
elseif item2.itemid == 4259 or item2.itemid == 4262 or item2.itemid == 4251 and random >= 2 then
doSendMagicEffect(topos, 3)
doTransformItem(item2.uid,itemid+1)
end
end
----------------------Dragon---------------------------
random = math.random(1,15)
if getPlayerLevel(cid) >= 1 then
if item2.itemid == 3104 and random == 1 then
doSendMagicEffect(topos, 12)
doTransformItem(item2.uid,3105)
doPlayerAddItem(cid,5877,1)
elseif item2.itemid == 3104 and random >= 2 then
doSendMagicEffect(topos, 3)
doTransformItem(item2.uid,3105)
end
end
----------------------Dragon with other corpse--------------------------
random = math.random(1,15)
if getPlayerLevel(cid) >= 1 then
if item2.itemid == 2844 and random == 1 then
doSendMagicEffect(topos, 12)
doTransformItem(item2.uid,3105)
doPlayerAddItem(cid,5877,1)
elseif item2.itemid == 2844 and random >= 2 then
doSendMagicEffect(topos, 3)
doTransformItem(item2.uid,3105)
end
end
----------------------Dragon lord------------------------
random = math.random(1,15)
if getPlayerLevel(cid) >= 1 then
if item2.itemid == 2881 and random == 1 then
doSendMagicEffect(topos, 12)
doTransformItem(item2.uid,2882)
doPlayerAddItem(cid,5948,1)
elseif item2.itemid == 2881 and random >= 2 then
doSendMagicEffect(topos, 3)
doTransformItem(item2.uid,2882)
end
end
----------------------behemoth------------------------
random = math.random(1,15)
if getPlayerLevel(cid) >= 1 then
if item2.itemid == 2931 and random == 1 then
doSendMagicEffect(topos, 12)
doTransformItem(item2.uid,2932)
doPlayerAddItem(cid,5893,1)
elseif item2.itemid == 2931 and random >= 2 then
doSendMagicEffect(topos, 3)
doTransformItem(item2.uid,2932)
end
end
-------------------------Bone Beast---------------------
random = math.random(1,15)
if getPlayerLevel(cid) >= 1 then
if item2.itemid == 3031 and random == 1 then
doSendMagicEffect(topos, 12)
doTransformItem(item2.uid,3032)
doPlayerAddItem(cid,5925,1)
elseif item2.itemid == 3031 and random >= 2 then
doSendMagicEffect(topos, 3)
doTransformItem(item2.uid,3032)
end
end
doPlayerSendCancel(cid,"You cant skin this.")
return 1
end