local config = {
	[39512] = {teleportPlayer = true}
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local useItem = config[item.actionid]
	if not useItem then
		return true
	end

	if useItem.teleportPlayer then
		player:teleportTo(Position(853, 1050, 10))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end
