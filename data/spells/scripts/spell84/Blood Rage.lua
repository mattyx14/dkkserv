local fistskill = getPlayerSkill(cid, 0)
local clubskill = getPlayerSkill(cid, 1)
local swordskill = getPlayerSkill(cid, 2)
local axeskill = getPlayerSkill(cid, 3)
local distskill = getPlayerSkill(cid, 4)
local shieldskill = getPlayerSkill(cid, 5)
local upskill = shieldskill/2
local downskill1 = clubskill/2
local downskill2 = swordskill/2
local downskill3 = axeskill/2
 
 
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
 
local condition2 = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 10000)
setConditionParam(condition2, CONDITION_PARAM_SKILL_CLUB, downskill1)
setConditionParam(condition2, CONDITION_PARAM_SKILL_SWORD, downskill2)
setConditionParam(condition2, CONDITION_PARAM_SKILL_AXE, downskill3)
setConditionParam(condition2, CONDITION_PARAM_SKILL_SHIELD, -upskill)
setCombatCondition(combat, condition2)
 
 
function onCastSpell(cid, var)
	local ret = LUA_ERROR
	if(doCombat(cid, combat, var) == LUA_NO_ERROR) then
		ret = LUA_NO_ERROR
	end
	return ret
end
