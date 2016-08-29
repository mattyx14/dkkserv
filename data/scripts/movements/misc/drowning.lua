local condition = Condition(CONDITION_DROWN)
condition:setParameter(CONDITION_PARAM_PERIODICDAMAGE, -20)
condition:setParameter(CONDITION_PARAM_TICKS, -1)
condition:setParameter(CONDITION_PARAM_TICKINTERVAL, 2000)

local drowningStepIn = MoveEvent()
local drowningStepOut = MoveEvent()

function drowningStepIn.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if player == nil then
		return true
	end

	if math.random(1, 10) == 1 then
		position:sendMagicEffect(CONST_ME_BUBBLES)
	end
	player:addCondition(condition)
	return true
end

function drowningStepOut.onStepOut(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if player == nil then
		return true
	end

	player:removeCondition(CONDITION_DROWN)
	return true
end

drowningStepIn:id(5405)
drowningStepOut:id(5405)
drowningStepIn:register()
drowningStepOut:register()