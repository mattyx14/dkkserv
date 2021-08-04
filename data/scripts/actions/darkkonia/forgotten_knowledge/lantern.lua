local config = {
	[26402] = {transformId = 26406},
	[26406] = {transformId = 26402}
}

local forgottenLantern = Action()
function forgottenLantern.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local lantern = config[item.itemid]
	if not lantern then
		return true
	end

	if not player:getStorageValue(26402) == 1 then
		return false
	end

	if item:getId() == 26402 then
		player:getPosition():sendMagicEffect(CONST_ME_ENERGYAREA)
		local msg = 'As you start polishing the lantern it begins to glow in an otherworldly light.'
		if player:getPosition():getDistance(Position(1075, 959, 15)) < 2 then
			if not player:getItemById(26401, true) then
				msg = 'In the light of the ghostsilver lantern you discover an otherwise invisible door. But you lack the key to open it.'
			else
				msg = 'In the light of the ghostsilver lantern you discover an otherwise invisible door. As you have the fitting key you can pass.'
			end
		end
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, msg)
	end

	item:transform(lantern.transformId)
	return true
end

forgottenLantern:id(26402, 26406)
forgottenLantern:register()
