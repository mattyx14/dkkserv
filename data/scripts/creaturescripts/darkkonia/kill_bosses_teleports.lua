local bosses = {
	['demon'] = {
		message = "Escape through the teleport quickly before it closes!",
		exitPosition = Position(981, 1053, 10),
		teleportBoss = Position(985, 1060, 10)
	},
	['zarabustor'] = {
		message = "Escape through the teleport quickly before it closes!",
		exitPosition = Position(1021, 189, 7),
		teleportBoss = Position(853, 1046, 10)
	},
	['dracula'] = {
		message = "Escape through the teleport quickly before it closes!",
		exitPosition = Position(1543, 875, 5),
	},
	['fezarus'] = {
		message = "Escape through the teleport quickly before it closes!",
		exitPosition = Position(737, 809, 12),
	},
	['fyzarus'] = {
		message = "Escape through the teleport quickly before it closes!",
		exitPosition = Position(924, 1107, 12),
		teleportBoss = Position(916, 1111, 12)
	},
	['toxirus'] = {
		message = "Escape through the teleport quickly before it closes!",
		exitPosition = Position(895, 987, 10),
	},
	['leaf golem grom'] = {
		message = "Escape through the teleport quickly before it closes!",
		exitPosition = Position(656, 1094, 12),
	},
	['black knight'] = {
		message = "Escape through the teleport quickly before it closes!",
		exitPosition = Position(1179, 1312, 8),
	},
	['massacre'] = {
		message = "Escape through the teleport quickly before it closes!",
		exitPosition = Position(1018, 1153, 10),
	},
	['black magician'] = {
		message = "Escape through the teleport quickly before it closes!",
		exitPosition = Position(891, 1175, 11),
		teleportBoss = Position(889, 1179, 11)
	},
}

local function removeTeleport(position)
	local teleportItem = Tile(position):getItemById(1387)
	if teleportItem then
		teleportItem:remove()
		position:sendMagicEffect(CONST_ME_POFF)
	end
end

local function spectatorStartCountdown(time, position)
	local spectators = Game.getSpectators(position, false, false, 5, 5, 5, 5)
	if #spectators > 0 then
		for i = 1, #spectators do
			if time > 1 then
				spectators[i]:say("" .. time .. "", TALKTYPE_MONSTER_SAY, false, spectators[i], position)
			end
		end
	end
	addEvent(spectatorStartCountdown, 1000, time - 1, position)
end

local killBoss = CreatureEvent("KillBoss")
function killBoss.onKill(creature, target)
	local targetMonster = target:getMonster()
	if not targetMonster then
		return true
	end

	local bossConfig = bosses[targetMonster:getName():lower()]
	if not bossConfig then
		return true
	end

	local position = targetMonster:getPosition()
	position:sendMagicEffect(CONST_ME_TELEPORT)
	local item = Game.createItem(1387, 1, bossConfig.teleportBoss)
	if item:isTeleport() then
		item:setDestination(bossConfig.exitPosition)
	end
	targetMonster:say(bossConfig.message, TALKTYPE_MONSTER_SAY, 0, 0, bossConfig.exitPosition)

	--remove portal after 1 min
	addEvent(spectatorStartCountdown, 500, 1 * 60, bossConfig.teleportBoss)
	addEvent(removeTeleport, 1 * 60 * 1000, bossConfig.teleportBoss)
	return true
end
killBoss:register()
