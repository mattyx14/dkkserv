local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	local mid = Game.createMonster("quara predator", Position(math.random(1046, 1061), math.random(27, 34), 12)) 
    if not mid then
		return
	end
	mid:say('My vassals emerge!', TALKTYPE_MONSTER_SAY)
	return combat:execute(creature, var)
end

spell:name("kraken summon")
spell:words("###2000")
spell:isAggressive(true)
spell:blockWalls(true)
spell:needLearn(true)
spell:register()