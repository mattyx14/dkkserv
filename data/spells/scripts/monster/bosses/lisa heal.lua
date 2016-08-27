local conditionExhaust = Condition(CONDITION_EXHAUST_HEAL, CONDITIONID_DEFAULT)
conditionExhaust:setParameter(CONDITION_PARAM_SUBID, DEFAULT_CONDITION_HEAL_SUB_ID)
conditionExhaust:setParameter(CONDITION_PARAM_TICKS, 6 * 1000)

local percentToHeal = 7
local minHealValue = 18000
local maxHealValue = 23000

local function healLisa(cid)
	local creature = Creature(cid)
	if not creature then
		return true
	end

	creature:addHealth(math.random(minHealValue, maxHealValue))
	creature:say("Lisa healed up!", TALKTYPE_ORANGE_1)
	creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
	return true
end

function onCastSpell(creature, variant)
	if (creature:getHealthPercent() <= percentToHeal) and not creature:getCondition(CONDITION_EXHAUST_HEAL, CONDITIONID_DEFAULT, DEFAULT_CONDITION_HEAL_SUB_ID) then
		creature:say("Lisa takes a final breath before she's healing up!", TALKTYPE_ORANGE_1)
		creature:addCondition(conditionExhaust)
		SpellAddEvent(healLisa, 6 * 1000, creature:getId())
	end

	return true
end
