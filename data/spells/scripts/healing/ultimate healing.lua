local exhaust = createConditionObject(CONDITION_EXHAUST)

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, FALSE)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)

function onGetFormulaValues(cid, level, maglevel)
	local min = (level * 2.0 + maglevel * 5.5) * 2.0
	local max = (level * 2.7 + maglevel * 6) * 2.55
	return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
	doAddCondition(cid, exhaust)
	return doCombat(cid, combat, var)
end