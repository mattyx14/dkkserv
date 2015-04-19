local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_HOLY)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.0, -15, -1.8, 0)
setCombatParam(combat, COMBAT_PARAM_USECHARGES, TRUE)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end