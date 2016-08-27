local percentToHeal = 99.9

local minHealth = 7500
local maxHelath = 9000

local fires = {
	1487,
	1492,
	1500,
}

function onCastSpell(creature, variant)
	if (creature:getHealthPercent() < 99.99) then
		local creaturePos = creature:getPosition()

		local tile = Tile(creaturePos)
		if not tile then
			return true
		end

		for _, fireId in ipairs(fires) do
			if tile:getItemById(fireId) then
				creature:addHealth(math.random(minHealth, maxHelath))
				creature:say("Omrafir gains new strength from the fire", TALKTYPE_ORANGE_1)
				creaturePos:sendMagicEffect(CONST_ME_MAGIC_BLUE)
				break
			end
		end
	end

	return true
end
