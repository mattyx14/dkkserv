local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 180000) -- 3 minutos.
setConditionParam(condition, CONDITION_PARAM_SKILL_FIST, 10)
setConditionParam(condition, CONDITION_PARAM_SKILL_MELEE, 10)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, -5)

setCombatCondition(combat, condition)

function onUse(cid, item, frompos, item2, topos)
doPlayerSay(cid, "Aaaaah...", 16)
doRemoveItem(item.uid, 1)
var = numberToVariant(cid)
doCombat(cid, combat, var)
return 1
end