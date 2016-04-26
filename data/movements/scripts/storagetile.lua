local failPosition = {
	[5500] = {
		mission = 2432,
		fromPosition = Position(890, 1021, 11),
		missionName = "require fixe axe quest"
	},
	[5501] = {
		mission = 2407,
		fromPosition = Position(931, 1084, 11),
		missionName = "require bright sword quest"
	},
	[5502] = {
		mission = 2436,
		fromPosition = Position(724, 821, 12),
		missionName = "require skull staff quest"
	},
	[5503] = {
		mission = 3101,
		fromPosition = Position(925, 981, 7),
		missionName = "require lv 30+ quest"
	},
	[5504] = {
		mission = 7730,
		fromPosition = Position(937, 1062, 7),
		missionName = "require blue legs quest"
	},
	[5505] = {
		mission = 7429,
		fromPosition = Position(940, 1076, 8),
		missionName = "require blessed sceptre quest"
	},
	[5506] = {
		mission = 7434,
		fromPosition = Position(940, 1076, 8),
		missionName = "require royal axe quest"
	},
	[5507] = {
		mission = 7390,
		fromPosition = Position(940, 1076, 8),
		missionName = "require the justice seeker quest"
	},
	[5508] = {
		mission = 9693,
		fromPosition = Position(932, 988, 9),
		missionName = "require jester outfit quest"
	},
	[5509] = {
		mission = 10614,
		fromPosition = Position(1065, 662, 8),
		missionName = "require rare crystal quest"
	},
	[5590] = { -- Anshara Skull Area
		mission = 1582,
		fromPosition = Position(599, 371, 7),
		missionName = "are blocked no have monsters"
	},
	[5591] = { -- Anshara Skull Area Two Nort
		mission = 1583,
		fromPosition = Position(686, 296, 6),
		missionName = "are blocked no have monsters"
	},
}

function onStepIn(creature, item, position, fromPosition)
	local config = failPosition[item.actionid]
	if not config then
		return true
	end

	local player = creature:getPlayer()
	if not player then
		return true
	end

	if player:getStorageValue(config.mission) == 1 then
		return true
	end

	player:teleportTo(config.fromPosition)
	config.fromPosition:sendMagicEffect(CONST_ME_MAGIC_BLUE)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'This area ' .. config.missionName .. '.')
	return true
end