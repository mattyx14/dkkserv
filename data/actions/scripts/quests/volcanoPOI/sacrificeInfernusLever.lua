local config = {
	{fromPosition = Position(462, 179, 9), toPosition = Position(495, 172, 9), sacrificePosition = Position(1046, 182, 9), sacrificeId = 2320},
	{fromPosition = Position(440, 186, 9), toPosition = Position(495, 172, 9), sacrificePosition = Position(1051, 182, 9), sacrificeId = 5468},
	{fromPosition = Position(472, 209, 9), toPosition = Position(495, 172, 9), sacrificePosition = Position(1056, 182, 9), sacrificeId = 5953},
	{fromPosition = Position(500, 176, 9), toPosition = Position(495, 172, 9), sacrificePosition = Position(1050, 137, 9), sacrificeId = 5802},
	{fromPosition = Position(452, 209, 9), toPosition = Position(495, 172, 9), sacrificePosition = Position(1050, 137, 9), sacrificeId = 5799},
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	item:transform(item.itemid == 9525 and 9526 or 9525)

	if item.itemid ~= 9525 then
		return true
	end

	local position = player:getPosition()

	local players = {}
	for i = 1, #config do
		local creature = Tile(config[i].fromPosition):getTopCreature()
		if not creature or not creature:isPlayer() then
			player:sendCancelMessage(creature:getName() .. ' is missing ' .. (creature:getSex() == PLAYERSEX_FEMALE and 'her' or 'his') .. ' sacrifice on the altar.')
			position:sendMagicEffect(CONST_ME_POFF)
			return true
		end

		local sacrificeItem = Tile(config[i].sacrificePosition):getItemById(config[i].sacrificeId)
		if not sacrificeItem then
			player:sendCancelMessage('The items no are on correct position.')
			position:sendMagicEffect(CONST_ME_POFF)
			return true
		end

		players[#players + 1] = creature
	end

	for i = 1, #players do
		players[i]:getPosition():sendMagicEffect(CONST_ME_POFF)
		players[i]:teleportTo(config[i].toPosition)
		config[i].toPosition:sendMagicEffect(CONST_ME_TELEPORT)
		Game.setStorageValue(Storage.AnsharaPOI.ritualInfernus, 1)
	end
	return true
end
