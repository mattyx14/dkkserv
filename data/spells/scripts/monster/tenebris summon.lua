local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)

function onCastSpell(creature, var)
	local t, spectator = Game.getSpectators(creature:getPosition(), false, false, 5, 5, 5, 5)
    local check = 0
    if #t ~= nil then
        for i = 1, #t do
		spectator = t[i]
            if spectator:getName() == "shadow fiend" then
               check = check + 1
            end
        end
    end

	local hp = (creature:getHealth()/creature:getMaxHealth())* 100
	if ((check < 2) and hp <= 95) or ((check < 4) and hp <= 75) or ((check < 6) and hp <= 55) or ((check < 10) and hp <= 35) then
		local mid = Game.createMonster('shadow fiend', Position(math.random(1121, 1131), math.random(1028, 1036), 15))
		if not mid then
			return
		end
		mid:say('The shadow fiend revives!', TALKTYPE_MONSTER_SAY)
	end
	return combat:execute(creature, var)
end
