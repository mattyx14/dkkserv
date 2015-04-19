local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_EARTHAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.0, 0, -1.6, 0)
setCombatParam(combat, COMBAT_PARAM_USECHARGES, TRUE)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end