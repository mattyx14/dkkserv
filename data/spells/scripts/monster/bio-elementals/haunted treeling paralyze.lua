local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SMALLPLANTS)

local condition = Condition(CONDITION_PARALYZE)
condition:setParameter(CONDITION_PARAM_TICKS, 20000)
condition:setFormula(-0.55, 0, -0.75, 0)
combat:setCondition(condition)

local area = createCombatArea({
	{1},
	{1},
	{1},
	{1},
	{1},
	{3}
})

combat:setArea(area)

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
