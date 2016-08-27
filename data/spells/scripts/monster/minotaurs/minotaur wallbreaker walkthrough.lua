--TO BE FIXED
--this method is a ugly hack

local conditionExhaust = Condition(CONDITION_EXHAUST_HEAL, CONDITIONID_DEFAULT)
conditionExhaust:setParameter(CONDITION_PARAM_SUBID, DEFAULT_CONDITION_HEAL_SUB_ID)
conditionExhaust:setParameter(CONDITION_PARAM_TICKS, 10 * 1000)

local function changeSpeeds(cid, variant)
	local creature = Creature(cid)
	if not creature then
		return
	end
	creature:changeSpeed(creature:getBaseSpeed())
end

function onCastSpell(creature, variant)
	local creaturePosition = creature:getPosition()
	local speed = creature:getSpeed()

	local newPosition = Position(creaturePosition.x - 1, creaturePosition.y, creaturePosition.z)

	local tile = Tile(newPosition)
	local topCreature = tile:getTopCreature()
	
	if not creature:getCondition(CONDITION_EXHAUST_HEAL, CONDITIONID_DEFAULT, DEFAULT_CONDITION_HEAL_SUB_ID) then
		creature:addCondition(conditionExhaust)
		creature:teleportTo(newPosition, true)
		creature:changeSpeed(-speed)
		SpellAddEvent(changeSpeeds, 11 * 1000, creature:getId(), variant)

		if topCreature and topCreature:isPlayer() then
			topCreature:teleportTo(Position(creaturePosition.x - 3, creaturePosition.y, creaturePosition.z), true)
		end
	end

	return true
end
