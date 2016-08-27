local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)

local area = createCombatArea(AREA_SQUARE1X1)
combat:setArea(area)

function onCastSpell(creature, variant)
	local summonCount = #MonsterSpellGetSummonsInArea(creature, true, "Dreadbeast", false, 50, 50, 50, 50)

	if (summonCount < 10) then
		local summon = Game.createMonster("Dreadbeast", creature:getPosition(), true, false)
		if summon then
			summon:setMaster(creature)
			return combat:execute(creature, variant)
		end
	end

	return false
end
