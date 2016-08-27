local conditionExhaust = Condition(CONDITION_EXHAUST_HEAL, CONDITIONID_DEFAULT)
conditionExhaust:setParameter(CONDITION_PARAM_SUBID, DEFAULT_CONDITION_HEAL_SUB_ID)
conditionExhaust:setParameter(CONDITION_PARAM_TICKS, 10000)

local function delayedCastSpell(cid, variant)
	local creature = Creature(cid)
	if not creature then
		return
	end

	local summons = creature:getSummons()
	for _, summon in ipairs(summons) do
		if summon:getName() == "Egg" then
			summon:getPosition():sendMagicEffect(CONST_ME_POISONAREA)

			local newmon = Game.createMonster("Spawn Of The Welter", summon:getPosition(), false, true)
			summon:remove()

			if newmon then
				newmon:setMaster(creature)
			end
		end
	end
end

function onCastSpell(creature, variant)
	if not creature:getCondition(CONDITION_EXHAUST_HEAL, CONDITIONID_DEFAULT, DEFAULT_CONDITION_HEAL_SUB_ID) then
		local summonCount = #creature:getSummons()
		if summonCount < 1 then
			local mon = Game.createMonster("Egg", creature:getPosition())
			if mon then
				mon:setMaster(creature)
			end
		end
		
		creature:addCondition(conditionExhaust)
		SpellAddEvent(delayedCastSpell, 10000, creature:getId(), variant)
	end
	
	return true
end
