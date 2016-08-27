local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_NONE)

local area = createCombatArea(AREA_SQUARE1X1)
combat:setArea(area)

local maxSummons = 6

function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < 6 then
		for i = 1, maxSummons - summonCount do
			local mid = Game.createMonster("Son of Verminor", Position(creature:getPosition().x + math.random(-2, 2), creature:getPosition().y + math.random(-2, 2), creature:getPosition().z))
			if mid then
				mid:setMaster(creature)
			end
		end

		return combat:execute(creature, variant)
	end

	return true
end
