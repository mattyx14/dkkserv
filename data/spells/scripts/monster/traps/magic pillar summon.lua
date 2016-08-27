local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)

function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < 3 then
		local summon = Game.createMonster("Demon2", creature:getPosition())
		if summon then
			summon:setMaster(creature)
			return combat:execute(creature, variant)
		end
	end

	return false
end
