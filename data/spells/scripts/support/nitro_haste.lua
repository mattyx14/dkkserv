local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 5)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 22000)
setConditionFormula(condition, 8.7, -120, 8.7, -120)
setCombatCondition(combat, condition)

local function fire(parameters)
doCombat(parameters.cid, parameters.combat, parameters.var)
end

function onCastSpell(cid, var)
local time = 100
local timeticks = 0
local parameters = { cid = cid, var = var, combat = combat }
repeat
addEvent(fire, seconds, parameters)
seconds = timeticks + time
until seconds == 22000
end 