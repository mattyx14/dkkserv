local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SOUND_WHITE)

local area = createCombatArea(AREA_SQUARE1X1)
combat:setArea(area)

local maxSummons = 2

function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < maxSummons then
		for i = 1, maxSummons - summonCount do
			local mid = Game.createMonster("War Wolf", creature:getPosition())
			if mid then
				mid:setMaster(creature)
			end
		end

		return combat:execute(creature, variant)
	end

	return false
end
