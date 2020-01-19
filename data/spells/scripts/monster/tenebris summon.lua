local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)

function onCastSpell(creature, var)
	local mid = Game.createMonster("shadow fiend", Position(math.random(1123, 1129), math.random(1029, 1035), 15)) 
    if not mid then
		return
	end
	mid:say('The shadow fiend revives!', TALKTYPE_MONSTER_SAY)
	return combat:execute(creature, var)
end
