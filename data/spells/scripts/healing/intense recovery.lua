local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_REGENERATION)
condition:setParameter(CONDITION_PARAM_SUBID, 1)
condition:setParameter(CONDITION_PARAM_TICKS, 1 * 60 * 1000)
condition:setParameter(CONDITION_PARAM_HEALTHGAIN, 80)
condition:setParameter(CONDITION_PARAM_HEALTHTICKS, 3000)
condition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)
combat:setCondition(condition)

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
