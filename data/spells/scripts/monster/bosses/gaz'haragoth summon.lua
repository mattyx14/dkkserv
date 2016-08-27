local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SOUND_RED)

local area = createCombatArea(AREA_SQUARE1X1)
combat:setArea(area)

function onCastSpell(creature, variant)
	local summonAmount = #MonsterSpellGetSummonsInArea(creature, false, "Minion Of Gaz'haragoth", true, 5, 5, 5, 5)

	local hp = creature:getHealthPercent()

	if ((summonAmount < 2) and (hp <= 95)) or ((summonAmount < 4) and (hp <= 75)) or ((summonAmount < 6) and (hp <= 55)) or ((summonAmount < 10) and (hp <= 35)) then
		creature:say("Minions! Follow my call!", TALKTYPE_ORANGE_1)

		for i = 1, 2 do
			local monster = Game.createMonster("minion of gaz'haragoth", creature:getPosition(), true, false)
		end

		return combat:execute(creature, variant)
	end

	return false
end
