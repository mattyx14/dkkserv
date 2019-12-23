local blessCheck = Action()

local blessings = {
	{id = 1, name = 'Spark of the Phoenix'},
	{id = 2, name = 'Embrace of Tibia'},
	{id = 3, name = 'Spiritual Shielding'},
	{id = 4, name = 'Fire of the Suns'},
	{id = 5, name = 'Wisdom of Solitude'},
	{id = 6, name = 'Twist of Fate'}
}

function blessCheck.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local result, bless = 'Received blessings:'
	for i = 1, #blessings do
		bless = blessings[i]
		result = player:hasBlessing(bless.id) and result .. '\n' .. bless.name or result
	end

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 20 > result:len() and 'No blessings received.' or result)
	return true
end

blessCheck:id(6561, 12424)
blessCheck:register()
