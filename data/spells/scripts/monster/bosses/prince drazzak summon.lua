local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_NONE)

local area = createCombatArea(AREA_CIRCLE3X3)
combat:setArea(area)

local summonsPositions = {
	Position(33528, 32330, 12),
	Position(33523, 32338, 12),
	Position(33532, 32337, 12),
}

function onCastSpell(creature, variant)
	creature:say("CRUSH THEM ALL!", TALKTYPE_ORANGE_2)

	for _, position in ipairs(summonsPositions) do
		Game.createMonster("Demon", position, false, true)
	end

	return combat:execute(creature, variant)
end
