local config = {
	{fromPosition = Position(462, 179, 9), toPosition = Position(495, 172, 9), sacrificePosition = Position(463, 178, 9), sacrificeId = 2320},
	{fromPosition = Position(440, 186, 9), toPosition = Position(495, 172, 9), sacrificePosition = Position(451, 208, 9), sacrificeId = 5468},
	{fromPosition = Position(472, 209, 9), toPosition = Position(495, 172, 9), sacrificePosition = Position(441, 185, 9), sacrificeId = 5953},
	{fromPosition = Position(499, 176, 9), toPosition = Position(495, 172, 9), sacrificePosition = Position(500, 176, 9), sacrificeId = 5802},
	{fromPosition = Position(452, 209, 9), toPosition = Position(495, 172, 9), sacrificePosition = Position(471, 208, 9), sacrificeId = 5799},
}

local sacrificeInfernusLever = Action()
function sacrificeInfernusLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	item:transform(item.itemid == 9825 and 9826 or 9825)
	if item.itemid ~= 9825 then
		return true
	end

	local position = player:getPosition()
	local players = {}
	for i = 1, #config do
		local creature = Tile(config[i].fromPosition):getTopCreature()
		local sacrificeItem = Tile(config[i].sacrificePosition):getItemById(config[i].sacrificeId)
		if not sacrificeItem then
			position:sendMagicEffect(CONST_ME_POFF)
			return true
		end

		players[#players + 1] = creature
	end

	for i = 1, #players do
		local sacrificeItem = Tile(config[i].sacrificePosition):getItemById(config[i].sacrificeId)
		if sacrificeItem then
			sacrificeItem:remove()
		end

		players[i]:getPosition():sendMagicEffect(CONST_ME_POFF)
		players[i]:teleportTo(config[i].toPosition)
		players[i]:setStorageValue(Storage.AnsharaPOI.ritualInfernus, 1)
		config[i].toPosition:sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end

sacrificeInfernusLever:aid(24883)
sacrificeInfernusLever:register()
