local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, FALSE)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)

function getCombatFormulas(cid, lv, maglv)
	-- Formulas completly NOT accurate, and I never testes this spell. Please, someone send me an accurate formula
	-- Pedro B. at OTFans.net
	local formula_min = ((lv*3 + maglv*2) * 1.05) + 20
	local formula_max = ((lv*4 + maglv*2) * 2.0) + 25

	if(formula_max < formula_min) then
		--Normalize values
		local tmp = formula_max
		formula_max = formula_min
		formula_min = tmp
	end
	return formula_min, formula_max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end