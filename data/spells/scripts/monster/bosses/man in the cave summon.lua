local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_GIFT_WRAPS)

local maxSummons = 2

function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < 2 then
		mid = Game.createMonster("Monk", creature:getPosition())
			if mid then
			mid:setMaster(creature)
		end

		return combat:execute(creature, variant)
	end

	return true
end
