local MIN = 1000
local MAX = 2600

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_ICEAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ICE)
setCombatFormula(combat, COMBAT_FORMULA_DAMAGE, -MIN, 0, -MAX, 0)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end