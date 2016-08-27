--TO BE FIXED
--it seems stupid to use a different area for each direction

local conditionExhaust = Condition(CONDITION_EXHAUST_COMBAT, CONDITIONID_DEFAULT)
conditionExhaust:setParameter(CONDITION_PARAM_SUBID, DEFAULT_CONDITION_COMBAT_SUB_ID)
conditionExhaust:setParameter(CONDITION_PARAM_TICKS, 5 * 1000)

-----------------------------------------------------------------------------

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
combat:setFormula(COMBAT_FORMULA_DAMAGE, -7000, 0, -10000, 0)


local area1 = createCombatArea({
	{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
})
combat:setArea(area1)

-----------------------------------------------------------------------------

local combat2 = Combat()
combat2:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat2:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
combat2:setFormula(COMBAT_FORMULA_DAMAGE, -7000, 0, -10000, 0)

local area2 = createCombatArea({
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
})
combat2:setArea(area2)

--------------------------------------------------------------------------

local combat3 = Combat()
combat3:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat3:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
combat3:setFormula(COMBAT_FORMULA_DAMAGE, -7000, 0, -10000, 0)

local area3 = createCombatArea({
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
})
combat3:setArea(area3)

--------------------------------------------------------------------------

local combat4 = Combat()
combat4:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat4:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
combat4:setFormula(COMBAT_FORMULA_DAMAGE, -7000, 0, -10000, 0)

local area4 = createCombatArea({
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{2, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
})

combat4:setArea(area4)

--------------------------------------------------------------

local function castSpell(cid, variant)
	local creature = Creature(cid)
	if not creature then
		return
	end

	if creature:getDirection() == 0 then
		combat:execute(creature, Variant(creature:getPosition()))
	elseif creature:getDirection() == 1 then
		combat2:execute(creature, Variant(creature:getPosition()))
	elseif creature:getDirection() == 2 then
		combat3:execute(creature, Variant(creature:getPosition()))
	elseif creature:getDirection() == 3 then
		combat4:execute(creature, Variant(creature:getPosition()))
	end

	creature:say("OMRAFIR BREATHES INFERNAL FIRE", TALKTYPE_ORANGE_2)
end

function onCastSpell(creature, variant)
	if not creature:getCondition(CONDITION_EXHAUST_COMBAT, CONDITIONID_DEFAULT, DEFAULT_CONDITION_COMBAT_SUB_ID) then
		creature:say("OMRAFIR INHALES DEEPLY!", TALKTYPE_ORANGE_2)
		creature:addCondition(conditionExhaust)
		SpellAddEvent(castSpell, 4000, creature:getId(), variant) 
	end

	return true
end
