local conditionExhaust = Condition(CONDITION_EXHAUST_HEAL, CONDITIONID_DEFAULT)
conditionExhaust:setParameter(CONDITION_PARAM_SUBID, DEFAULT_CONDITION_HEAL_SUB_ID)
conditionExhaust:setParameter(CONDITION_PARAM_TICKS, 14000)

local function summon(cid)
	local creature = Creature(cid)
	if not creature then
		return
	end

	Game.createMonster("Energy Pulse", creature:getPosition(), true, true)
	creature:say("The fully charged generator explodes in a blast!", TALKTYPE_ORANGE_2)
	creature:remove()

	return true
end

function onCastSpell(creature, variant)
	if not creature:getCondition(CONDITION_EXHAUST_HEAL, CONDITIONID_DEFAULT, DEFAULT_CONDITION_HEAL_SUB_ID) then
		SpellAddEvent(summon, 14000, creature:getId())
		creature:addCondition(conditionExhaust)
	end
	
	return true
end
