local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SNOWBALL)

local condition = Condition(CONDITION_PARALYZE)
combat:setParameter(CONDITION_PARAM_TICKS, 20000)
combat:setFormula(-0.55, 0, -0.75, 0)
combat:setCondition(condition)

local area = createCombatArea(AREA_CIRCLE2X2)
combat:setArea(area)

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
