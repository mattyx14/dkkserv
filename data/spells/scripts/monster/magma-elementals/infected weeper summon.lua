local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)

local area = createCombatArea(AREA_CIRCLE2X2)
combat:setArea(area)

function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < 1 then
		local mid = Game.createMonster("Parasite", creature:getPosition())
		if mid then
			mid:setMaster(creature)
		end

		return combat:execute(creature, variant)
	end

	return true
end
