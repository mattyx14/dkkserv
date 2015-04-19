local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.8, 0, -2.2, 0)
setCombatParam(combat, COMBAT_PARAM_USECHARGES, TRUE)


local area = createCombatArea(AREA_CROSS5X5)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end