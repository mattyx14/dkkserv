local configElevator = {
	-- [ACTION_ID] = Teleport Position
	[24890] = Position(993, 1002, 5),
}

local elevatorLever = Action()
function elevatorLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local targetPosition = configElevator[item.actionid]
	if not targetPosition then
		return true
	end

	item:transform(item.itemid == 2772 and 2773 or 2772)

	toPosition.x = toPosition.x - 1
	local creature = Tile(toPosition):getTopCreature()
	if not creature or not creature:isPlayer() then
		return true
	end

	if item.itemid ~= 2772 then
		return true
	end

	creature:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	creature:teleportTo(targetPosition)
	targetPosition:sendMagicEffect(CONST_ME_TELEPORT)
	return true
end

for index, value in pairs(configElevator) do
	elevatorLever:aid(index)
end
elevatorLever:register()
