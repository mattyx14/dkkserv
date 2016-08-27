local bossPos = Position(33528, 32334, 12)
local playersPos = Position(33529, 32334, 12)

local fromPosition = Position(33515, 32323, 12)
local toPosition = Position(33540, 32344, 12)

local centerRectPosition = buildRectArea(fromPosition, toPosition)

function onCastSpell(creature, variant)
	creature:teleportTo(bossPos, true)
	creature:say("GET OVER HERE!", TALKTYPE_ORANGE_2, false, 0, bossPos)
	creature:setDirection(DIRECTION_EAST)

	local creatures = getCreaturesInArea(centerRectPosition.position, true, centerRectPosition.width, centerRectPosition.height, centerRectPosition.fromZ, centerRectPosition.toZ)

	if creatures then
		for _, player in ipairs(creatures) do
			player:teleportTo(playersPos, true)
		end
	end

	return true
end
