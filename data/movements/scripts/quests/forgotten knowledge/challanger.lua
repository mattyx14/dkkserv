local destination = {
	[24878] = {newPos = Position(1127, 1080, 15), backPos = Position(1095, 1080, 15), storage = Storage.ForgottenKnowledge.LadyTenebrisTimer},
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return
	end

	local teleport = destination[item.uid]
	if not teleport then
		return
	end
	if player:getExhaustion(teleport.storage) <= 0 then
		position:sendMagicEffect(CONST_ME_TELEPORT)
		player:teleportTo(teleport.newPos)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	else
		player:teleportTo(teleport.backPos)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have to wait to challange this enemy again!")
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end
	return true
end
