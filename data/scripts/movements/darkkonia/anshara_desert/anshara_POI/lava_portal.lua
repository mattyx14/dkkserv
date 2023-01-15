local destination = {
	[24880] = {position = Position(495, 172, 9), storage = DarkKonia.AnsharaPOI.ritualInfernus}
}

local lavaPortalVolano = MoveEvent()
function lavaPortalVolano.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return
	end

	local teleport = destination[item.actionid]
	if not teleport then
		return
	end

	if player:getStorageValue(teleport.storage) == 1 then
		player:teleportTo(teleport.position)
		player:getPosition():sendMagicEffect(CONST_ME_FIREAREA)
	else
		player:teleportTo(Position(495, 176, 9))
		player:say("You haven't permission to use this teleport.", TALKTYPE_MONSTER_SAY)
		player:getPosition():sendMagicEffect(CONST_ME_FIREAREA)
	end
	return true
end

lavaPortalVolano:type("stepin")
lavaPortalVolano:aid(24880)
lavaPortalVolano:register()
