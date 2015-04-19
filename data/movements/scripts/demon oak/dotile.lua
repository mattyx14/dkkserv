------Made by BomBa
 local tree = {x = 478, y = 1419, z = 7, stackpos=1}
 local monsterPos1 = {x = 478, y = 1419, z = 7}
 local monsterPos2 = {x = 478, y = 1420, z = 7}

function onStepIn(cid, item, pos)
 local monsterFlower = "Moonflower"
	if getPlayerLevel(cid) < 120 then
	   doMoveCreature(cid, NORTH)
	   doCreatureSay(cid, "You must be at least level 120 or higher.", TALKTYPE_ORANGE_1)
	 elseif getPlayerLevel(cid) >= 120 then
	   doMoveCreature(cid, SOUTH)
	   doCreateItem(2717, tree)
	   doSummonCreature(monsterFlower, monsterPos1)
	   doSummonCreature(monsterFlower, monsterPos2)
	   doSendMagicEffect(monsterPos1, CONST_ME_SMALLPLANTS)
	   doSendMagicEffect(monsterPos2, CONST_ME_SMALLPLANTS)
 end
 return TRUE
end
