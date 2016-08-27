local condition = Condition(CONDITION_EXHAUST_HEAL, CONDITIONID_DEFAULT)
condition:setParameter(CONDITION_PARAM_SUBID, 88888)
condition:setParameter(CONDITION_PARAM_TICKS, 15 * 60 * 1000)

function onCastSpell(creature, variant)
	if (creature:getHealth() < (creature:getMaxHealth() * 0.2)) and not creature:getCondition(CONDITION_EXHAUST_HEAL, CONDITIONID_DEFAULT, 88888) then
		creature:addCondition(condition)
		creature:addHealth(math.random(5000, 7500))
	end

	return true
end
