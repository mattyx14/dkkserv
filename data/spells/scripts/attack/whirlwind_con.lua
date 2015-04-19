local exhaust = 1000

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, TRUE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ETHEREALSPEAR)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.4, 0, -0.95, 0)
setCombatParam(combat, COMBAT_PARAM_USECHARGES, TRUE)


function onCastSpell(cid, var)
local pAccess = getPlayerAccess(cid) -- Returns the player's access
if (isPlayer(cid) == TRUE and pAccess < 0) then
if (exhaust(cid, storevalue, exhausttime) == 2) then
return doCombat(cid, combat, var)
else
doPlayerSendCancel(cid, "You are exhausted.")
end
else
return doCombat(cid, combat, var)
end
end