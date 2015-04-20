local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
 
local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_SUBID, 4)
setConditionParam(condition, CONDITION_PARAM_BUFF, true)
setConditionParam(condition, CONDITION_PARAM_STAT_MAXHEALTHPERCENT, 200)
setConditionParam(condition, CONDITION_PARAM_TICKS, 10 * 60 * 1000)
setCombatCondition(combat, condition)
 
function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end