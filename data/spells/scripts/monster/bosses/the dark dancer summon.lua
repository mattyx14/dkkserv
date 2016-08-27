local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SOUND_PURPLE)

function onCastSpell(creature, variant)
	local summonCount = creature:getSummons()
	if #summonCount < 3 then
		mid = Game.createMonster("Ghoul", creature:getPosition())

		if mid then
			mid:setMaster(creature)
		end

		return combat:execute(creature, variant)
	end

	return true
end
