--TO BE FIXED
-- why it does use Demon2?

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_NONE)

local area = createCombatArea(AREA_SQUARE1X1)
combat:setArea(area)

local maxSummons = 4

function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < 4 then
		for i = 1, maxSummons - summonCount do
			local mid = Game.createMonster("Demon2", Position(creature:getPosition().x + math.random(-2, 2), creature:getPosition().y + math.random(-2, 2), creature:getPosition().z))
				if mid then
				mid:setMaster(creature)
			end
		end

		return combat:execute(creature, variant)
	end

	return true
end
