local summons = {
	"Ironblight",
	"Cliff Strider",
	"Stone Devourer",
	"Enraged Crystal Golem",
	"Armadile",
	"Crystalcrusher"
}

function onCastSpell(creature, variant)
	local summonAmount = #MonsterSpellGetSummonsInArea(creature, false, "", true, 15, 15, 15, 15)

	local hp = creature:getHealthPercent()

	if ((summonAmount < 6) and (hp > 25)) or ((summonAmount < 11) and (hp <= 25)) then
		creature:say("PROTECT THE CRYSTAL!", TALKTYPE_ORANGE_2)
		local a, b = math.random(-2, 2), math.random(-2, 2)

		for i = 1, 5 do
			Game.createMonster(summons[math.random(#summons)].name, Position(creature:getPosition().x + a, creature:getPosition().y + b, creature:getPosition().z), false, false)
		end
	end

	return true
end
