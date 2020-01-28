local destination = {
	[24880] = {position = Position(634, 373, 8), Storage = Storage.ForgottenKnowledge.DragonkingKilled}
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
		player:teleportTo(Position(618, 371, 8))
		player:say("You haven't permission to use this teleport.", TALKTYPE_MONSTER_SAY)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end

	return true
end
