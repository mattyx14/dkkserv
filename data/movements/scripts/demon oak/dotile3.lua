------Made by BomBa
 local tree = {x = 2134, y = 926, z = 9, stackpos=1}
 local monsterPos1 = {x = 2134, y = 927, z = 9}
 local monsterPos2 = {x = 2134, y = 927, z = 9}

function onStepIn(cid, item, pos)
 local monsterFlower = "Moonflower"
	if getPlayerLevel(cid) < 150 then
	   doMoveCreature(cid, NORTH)
	   doCreatureSay(cid, "You must be at least level 150 or higher.", TALKTYPE_ORANGE_1)
	 elseif getPlayerLevel(cid) >= 150 then
	   doMoveCreature(cid, SOUTH)
	   doCreateItem(1445, tree)
	   doSummonCreature(monsterFlower, monsterPos1)
	   doSummonCreature(monsterFlower, monsterPos2)
	   doSendMagicEffect(monsterPos1, CONST_ME_SMALLPLANTS)
	   doSendMagicEffect(monsterPos2, CONST_ME_SMALLPLANTS)
 end
 return TRUE
end
