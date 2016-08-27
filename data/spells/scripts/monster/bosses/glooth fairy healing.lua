local conditionExhaust = Condition(CONDITION_EXHAUST_HEAL, CONDITIONID_DEFAULT)
conditionExhaust:setParameter(CONDITION_PARAM_SUBID, DEFAULT_CONDITION_HEAL_SUB_ID)
conditionExhaust:setParameter(CONDITION_PARAM_TICKS, 30 * 1000)

local healPercent = 10
local minHeal = 7500
local maxHeal = 8000

local function heal(cid)
	local creature = Creature(cid)
	if not creature then
		return
	end

	creature:addHealth(math.random(minHeal, maxHeal))
	creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)

	return true
end

function onCastSpell(creature, variant)
	if (creature:getHealthPercent() < healPercent) and not creature:getCondition(CONDITION_EXHAUST_HEAL, CONDITIONID_DEFAULT, DEFAULT_CONDITION_HEAL_SUB_ID) then
		creature:addCondition(conditionExhaust)
		SpellAddEvent(heal, 10 * 1000, creature:getId())
	end

	return true
end
