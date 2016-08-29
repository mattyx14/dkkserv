local outfit = {lookType = 267, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

local swimmStepIn = MoveEvent()
local swimmStepOut = MoveEvent()

function swimmStepIn.onStepIn(creature, item, position, fromPosition)
	if not creature:isPlayer() then
		return false
	end

	doSetCreatureOutfit(creature, outfit, -1)
	return true
end

function swimmStepOut.onStepOut(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if player == nil then
		return false
	end

	player:removeCondition(CONDITION_OUTFIT)
	return true
end

for i = 4620, 4625 do
	swimmStepIn:id(i)
	swimmStepOut:id(i)
end
swimmStepIn:register()
swimmStepOut:register()

