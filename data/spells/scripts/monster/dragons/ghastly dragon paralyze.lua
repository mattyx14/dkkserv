local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_BATS)

local condition = Condition(CONDITION_PARALYZE)
condition:setParameter(CONDITION_PARAM_TICKS, 20000)
condition:setFormula(-0.8, 0, -0.9, 0)
combat:setCondition(condition)

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
