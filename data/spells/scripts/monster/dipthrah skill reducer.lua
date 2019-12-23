local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)

local area = createCombatArea(AREA_CIRCLE3X3)
combat:setArea(area)

local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_TICKS, 6000)
condition:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, 50)
condition:setParameter(CONDITION_PARAM_SKILL_DISTANCEPERCENT, 50)
condition:setParameter(CONDITION_PARAM_SKILL_SHIELDPERCENT, 50)
combat:setCondition(condition)

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
