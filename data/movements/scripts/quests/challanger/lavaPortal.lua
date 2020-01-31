local destination = {
	[24880] = {position = Position(495, 172, 9), Storage = Storage.Anshara.ritualInfernus}
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return
	end

	local teleport = destination[item.actionid]
	if not teleport then
		return
	end

	if player:getStorageValue(teleport.storage) >= 1 then
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:teleportTo(teleport.position)
		player:getPosition():sendMagicEffect(CONST_ME_FIREAREA)
	else
		player:teleportTo(Position(495, 176, 9))
		player:say("You haven't permission to use this teleport.", TALKTYPE_MONSTER_SAY)
		player:getPosition():sendMagicEffect(CONST_ME_FIREAREA)
	end

	return true
end
