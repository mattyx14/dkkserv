local rope = Action()

local holeId = {
	294, 369, 370, 383, 392, 408, 409, 410, 427, 428, 429, 430, 462, 469, 470, 482,
	484, 485, 489, 924, 1369, 3111, 3135, 3136, 4835, 4837, 7933, 7938, 8170, 8286,
	8285, 8284, 8281, 8280, 8279, 8277, 8276, 8567, 8585, 8596, 8595, 8249, 8250, 8251,
	8323, 8252, 8253, 8254, 8255, 8256, 8592, 8972, 9606, 9625, 13190, 14461, 19519, 21536
}

function rope.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local tile = Tile(toPosition)
	if not tile then
		return false
	end

	if isInArray(ropeSpots, tile:getGround():getId()) or tile:getItemById(14435) then
		tile = Tile(toPosition:moveUpstairs())
		if tile:hasFlag(TILESTATE_PROTECTIONZONE) and player:isPzLocked() then
			player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_PLAYERISPZLOCKED))
			return true
		end
		player:teleportTo(toPosition, false)
		return true
	elseif isInArray(holeId, target.itemid) then
		toPosition.z = toPosition.z + 1
		tile = Tile(toPosition)
		if tile then
			local thing = tile:getTopVisibleThing()
			if thing:isPlayer() then
				tile = Tile(toPosition:moveUpstairs())
				if tile:hasFlag(TILESTATE_PROTECTIONZONE) and thing:isPzLocked() then
					return false
				end
				return thing:teleportTo(toPosition, false)
			end
			if thing:isItem() and thing:getType():isMovable() then
				return thing:moveTo(toPosition:moveUpstairs())
			end
		end

		player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		return true
	end

	return false
end

rope:id(2120, 7731)
rope:register()
