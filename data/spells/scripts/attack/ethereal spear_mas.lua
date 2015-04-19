local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, TRUE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ETHEREALSPEAR)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0.1, -100, 0.7, -300)
setCombatParam(combat, COMBAT_PARAM_USECHARGES, TRUE)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
