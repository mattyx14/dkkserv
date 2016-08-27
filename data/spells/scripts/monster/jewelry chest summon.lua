local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_NONE)

local area = createCombatArea(AREA_SQUARE1X1)
combat:setArea(area)

local maxSummons = 5

function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < 5 then
		for i = 1, maxSummons - summonCount do
			creature:addHealth(500)
			creature:getPosition():sendMagicEffect(CONST_ME_ENERGYHIT)
			local mid = Game.createMonster("Chest Guard", Position(creature:getPosition().x + math.random(-2, 2), creature:getPosition().y + math.random(-2, 2), creature:getPosition().z))
			if mid then
				mid:say("FREEZE! LET ME SEE YOUR HANDS UP!", TALKTYPE_ORANGE_2)
			end
		end

		return combat:execute(creature, variant)
	end

	return true
end
