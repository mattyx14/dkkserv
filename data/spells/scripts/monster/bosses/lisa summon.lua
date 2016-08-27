local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)

local area = createCombatArea(AREA_CIRCLE2X2)
combat:setArea(area)

local maxSummons = 4

function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < 4 then
		for i = 1, maxSummons - summonCount do
			local summon = Game.createMonster("Glooth Anemone2", creature:getPosition(), true, false)
			if summon then
				summon:setMaster(creature)
			end
		end
	end

	return combat:execute(creature, variant)
end
