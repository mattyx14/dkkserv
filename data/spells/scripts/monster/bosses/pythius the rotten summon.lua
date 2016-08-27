local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)

local area = createCombatArea(AREA_CIRCLE3X3)
combat:setArea(area)

local maxSummons = 2

function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < 2 then
		for i = 1, maxSummons - summonCount do
			local mid = Game.createMonster("Undead Gladiator", creature:getPosition())
				if mid then
				mid:setMaster(creature)
			end
		end
	end

	return combat:execute(creature, variant)
end
