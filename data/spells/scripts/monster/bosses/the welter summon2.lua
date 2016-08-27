local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)

function onCastSpell(creature, variant)
	local summonCount = #MonsterSpellGetSummonsInArea(creature, false, {"Egg", "Spawn Of The Welter"}, true, 50, 50, 50, 50)

	if summonCount < 10 then
		Game.createMonster("Egg", creature:getPosition(), false, true)
		return combat:execute(creature, variant)
	end

	return false
end
