local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.6, -30, -2.3, -30)

local arr = {
{0, 1, 1, 1, 0},
{1, 0, 0, 0, 1},
{1, 0, 2, 0, 1},
{1, 0, 0, 0, 1},
{0, 1, 1, 1, 0}
}

local area = createCombatArea(arr)
setCombatArea(combat, area)
local animationShoot = CONST_ANI_INFERNALBOLT  -- Edit this to change the effect





function onCastSpell(cid, var)


pPos = getCreaturePosition(cid)

doSendDistanceShoot(pPos, {x=pPos.x-2, y=pPos.y, z=pPos.z}, animationShoot)
doSendDistanceShoot(pPos, {x=pPos.x-2, y=pPos.y-1, z=pPos.z}, animationShoot)
doSendDistanceShoot(pPos, {x=pPos.x-2, y=pPos.y+1, z=pPos.z}, animationShoot)
doSendDistanceShoot(pPos, {x=pPos.x+1, y=pPos.y-2, z=pPos.z}, animationShoot)
doSendDistanceShoot(pPos, {x=pPos.x-1, y=pPos.y-2, z=pPos.z}, animationShoot)
doSendDistanceShoot(pPos, {x=pPos.x, y=pPos.y-2, z=pPos.z}, animationShoot)

doSendDistanceShoot(pPos, {x=pPos.x+2, y=pPos.y, z=pPos.z}, animationShoot)
doSendDistanceShoot(pPos, {x=pPos.x+2, y=pPos.y+1, z=pPos.z}, animationShoot)
doSendDistanceShoot(pPos, {x=pPos.x+2, y=pPos.y-1, z=pPos.z}, animationShoot)
doSendDistanceShoot(pPos, {x=pPos.x-1, y=pPos.y+2, z=pPos.z}, animationShoot)
doSendDistanceShoot(pPos, {x=pPos.x+1, y=pPos.y+2, z=pPos.z}, animationShoot)
doSendDistanceShoot(pPos, {x=pPos.x, y=pPos.y+2, z=pPos.z}, animationShoot)
	return doCombat(cid, combat, var)


end