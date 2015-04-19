local exhaust = 1000

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 39)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 37)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0, -100, 0.7, 0)


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