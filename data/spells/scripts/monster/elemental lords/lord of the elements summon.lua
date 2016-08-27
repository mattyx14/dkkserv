local outfits = {
	[11] = "roaring water elemental",
	[285] = "jagged earth elemental",
	[290] = "overcharged energy elemental",
	[243] = "blistering fire elemental"
}

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_TELEPORT)

local area = createCombatArea(AREA_CIRCLE2X2)
combat:setArea(area)

local maxSummons = 2

function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < 2 then
		for i = 1, maxSummons - summonCount do
			local looktype = outfits[creature:getOutfit().lookType]
			if looktype then
				local mid = Game.createMonster(looktype, creature:getPosition())
				if mid then
					mid:setMaster(creature)
				end
			end
		end

		return combat:execute(creature, variant)
	end
	return true
end
