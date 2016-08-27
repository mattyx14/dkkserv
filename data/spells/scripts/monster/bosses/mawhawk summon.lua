local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_BLOCKHIT)

local area = createCombatArea(AREA_CROSS1X1)
combat:setArea(area)

local maxSummons = 4

function onCastSpell(creature, variant)
	local summons = creature:getSummons()
	local summonCount = #summons

	if summonCount < maxSummons then
		creature:say("Watch my maws!", TALKTYPE_ORANGE_1)
		for i = 1, maxSummons - summonCount do
			local mid = Game.createMonster("Guzzlemaw", creature:getPosition(), true, true)
			if not mid then
				return
			end

			mid:setMaster(creature)
		end

		return combat:execute(creature, variant)
	end

	return true
end
