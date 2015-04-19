-----------------------------------------------------------------------------------------------------------
-- Perfect and configurable Annihilator Levers System created by Falcon. If you have any doubt or problem--
-- please contact Falcon via OTServHispano or by e-mail (guido_va7@hotmail.com) --
-----------------------------------------------------------------------------------------------------------
function onUse(cid, item, frompos, item2, topos)

------------------------------------------------------------------------------------------------------
-- Configurable settings -- (You can change or modify the following variables according your needs) --
------------------------------------------------------------------------------------------------------

-- Levers ID -- (It normally should not be changed, at least you use another item as a lever) --
lever1ID = 1945 -- (Default is 1945)
lever2ID = 1946 -- (Default is 1946)



-- Level needed to do the quest -- (This is the level a player will need to perform the Annihilator Quest) --

level = 100 -- (Default value is 100)



-- Demons' summoning positions -- (These are the positions where Demons will be summoned) --

demon1pos = {x=418, y=1761, z=7}
demon2pos = {x=420, y=1761, z=7}
demon3pos = {x=416, y=1763, z=7}
demon4pos = {x=417, y=1765, z=7}
demon5pos = {x=419, y=1765, z=7}
demon6pos = {x=421, y=1765, z=7}



-- Players' initial positions -- (These are the positions where players must step for switching the lever successfully) --
-- NOTE: You should not change the "stackpos" variable --

player1pos = {x=510, y=1759, z=7, stackpos=253}
player2pos = {x=511, y=1759, z=7, stackpos=253}
player3pos = {x=512, y=1759, z=7, stackpos=253}
player4pos = {x=513, y=1759, z=7, stackpos=253}



-- Players' positions after switching lever succesfully -- (These are the positions to where players will be moved --
-- after switching the lever succesfully) --

nplayer1pos = {x=418, y=1763, z=7}
nplayer2pos = {x=419, y=1763, z=7}
nplayer3pos = {x=420, y=1763, z=7}
nplayer4pos = {x=421, y=1763, z=7}



------------------------------------------------------------------------------------------------------
-- End configurable settings --
------------------------------------------------------------------------------------------------------


if item.itemid == lever1ID then

player1 = getThingfromPos(player1pos)
player2 = getThingfromPos(player2pos)
player3 = getThingfromPos(player3pos)
player4 = getThingfromPos(player4pos)

if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then

player1lvl = getPlayerLevel(player1.uid)
player2lvl = getPlayerLevel(player2.uid)
player3lvl = getPlayerLevel(player3.uid)
player4lvl = getPlayerLevel(player4.uid)

if player1lvl >= level and player2lvl >= level and player3lvl >= level and player4lvl >= level then

doSendMagicEffect(player1pos,2)
doSendMagicEffect(player2pos,2)
doSendMagicEffect(player3pos,2)
doSendMagicEffect(player4pos,2)

doTeleportThing(player1.uid,nplayer1pos)
doTeleportThing(player2.uid,nplayer2pos)
doTeleportThing(player3.uid,nplayer3pos)
doTeleportThing(player4.uid,nplayer4pos)

doSummonCreature('Demon',demon1pos)
doSummonCreature('Demon',demon2pos)
doSummonCreature('Demon',demon3pos)
doSummonCreature('Demon',demon4pos)
doSummonCreature('Demon',demon5pos)
doSummonCreature('Demon',demon6pos)
doSummonCreature('Demon',demon7pos)
doSummonCreature('Demon',demon8pos)
doSummonCreature('Demon',demon9pos)

doSendMagicEffect(nplayer1pos,10)
doSendMagicEffect(nplayer2pos,10)
doSendMagicEffect(nplayer3pos,10)
doSendMagicEffect(nplayer4pos,10) 

doTransformItem(item.itemid, lever2ID)
else
doPlayerSendCancel(cid,"Every player must be level "..level.." or above.")
end
else
doPlayerSendCancel(cid,"You need four players for this quest.")
end

elseif item.itemid == lever2ID then
doTransformItem(item.uid, lever1ID)
end
return 1
end
