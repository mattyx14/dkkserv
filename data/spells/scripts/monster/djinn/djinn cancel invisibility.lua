local combat = Combat()
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_INVISIBLE)

local area = createCombatArea(AREA_CIRCLE3X3)
combat:setArea(area)

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
