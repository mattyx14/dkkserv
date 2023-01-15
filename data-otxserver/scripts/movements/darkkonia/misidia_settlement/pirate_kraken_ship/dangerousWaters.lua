local dangerousWaters = MoveEvent()

function dangerousWaters.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if player:getStorageValue(DarkKonia.Quest.Key.ID2088) < 1 or player:getStorageValue(DarkKonia.Quest.Key.ID2089) < 1 then
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:teleportTo(Position(1119, 184, 7))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:say("This water is infested with sharks, I better go.", TALKTYPE_MONSTER_SAY)
		return true
	end

	return true
end

dangerousWaters:aid(24925)
dangerousWaters:register()
