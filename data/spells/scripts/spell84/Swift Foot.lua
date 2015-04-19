local fistskill = getPlayerSkill(cid, 0)
local clubskill = getPlayerSkill(cid, 1)
local swordskill = getPlayerSkill(cid, 2)
local axeskill = getPlayerSkill(cid, 3)
local distskill = getPlayerSkill(cid, 4)
local shieldskill = getPlayerSkill(cid, 5)
local downskill1 = distskill/2
local downskill2 = shieldskill/2
 
 
 
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
 
ocal combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat2, COMBAT_PARAM_AGGRESSIVE, 0)
 
 
local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 8000)
setConditionFormula(condition, 1.3, -24, 1.3, -24)
setCombatCondition(combat2, condition)
 
local condition2 = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 8000)
setConditionParam(condition2, CONDITION_PARAM_SKILL_DISTANCE, -downskill1)
setConditionParam(condition2, CONDITION_PARAM_SKILL_SHIELD, -downskill2)
setCombatCondition(combat, condition2)
 
 
function onCastSpell(cid, var)
	local ret = LUA_ERROR
	if(doCombat(cid, combat, var) == LUA_NO_ERROR) and (doCombat(cid, combat2, var) == LUA_NO_ERROR) then
		ret = LUA_NO_ERROR
	end
	return ret
end
