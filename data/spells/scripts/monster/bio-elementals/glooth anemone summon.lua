local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)

local area = createCombatArea(AREA_SQUARE1X1)
combat:setArea(area)

function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < 1 then
		local mid = Game.createMonster("Glooth Blob", creature:getPosition())
		if not mid then
			return true
		end

		mid:setMaster(creature)

		return combat:execute(creature, variant)
	end

	return true
end
