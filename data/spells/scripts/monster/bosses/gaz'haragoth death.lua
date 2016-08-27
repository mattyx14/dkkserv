local conditionExhaust = Condition(CONDITION_EXHAUST_COMBAT, CONDITIONID_DEFAULT)
conditionExhaust:setParameter(CONDITION_PARAM_SUBID, DEFAULT_CONDITION_COMBAT_SUB_ID)
conditionExhaust:setParameter(CONDITION_PARAM_TICKS, 5 * 1000)

local area = createCombatArea({
	{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
})

local combat = Combat()
combat:setArea(area)

local minDamage = 30000
local maxDamage = 30000

function onTargetTile(demon, pos)
	local tile = pos:getTile()
	if not tile then
		return true
	end

	local creatures = tile:getCreatures()

	if(creatures) then
		for _, creature in ipairs(creatures) do
			if (creature ~= demon) then
				doTargetCombatHealth(demon, creature, COMBAT_ENERGYDAMAGE, -minDamage, -maxDamage, CONST_ME_NONE)
			end
		end
	end

	return true
end

combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_PURPLEENERGY)
combat:setCallback(CALLBACK_PARAM_TARGETTILE, "onTargetTile")

local function delayedCastSpell(cid, variant)
	local creature = Creature(cid)

	if not creature then
		return
	end

	creature:say("Gaz'haragoth calls down: DEATH AND DOOM!", TALKTYPE_ORANGE_2)

	return combat:execute(creature, Variant(creature:getPosition()))
end

function onCastSpell(creature, variant)
	if not creature:getCondition(CONDITION_EXHAUST_COMBAT, CONDITIONID_DEFAULT, DEFAULT_CONDITION_COMBAT_SUB_ID) then
		creature:say("Gaz'haragoth begins to channel DEATH AND DOOM into the area! RUN!", TALKTYPE_ORANGE_2)
		SpellAddEvent(delayedCastSpell, 5000, creature:getId(), variant)
		creature:addCondition(conditionExhaust)
	end

	return true
end
