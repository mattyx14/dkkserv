local bosses = {
	['demon'] = {
		teleportTo = Position(982, 1060, 10),
		createTeleport = Position(987, 1060, 10)
	},
	['zarabustor'] = {
		teleportTo = Position(1021, 189, 7),
		createTeleport = Position(853, 1046, 10)
	},
	['fezarus'] = {
		teleportTo = Position(737, 809, 12),
	},
	['fyzarus'] = {
		teleportTo = Position(924, 1107, 12),
		createTeleport = Position(916, 1111, 12)
	},
	['toxirus'] = {
		teleportTo = Position(895, 987, 10),
	},
	['black magician'] = {
		teleportTo = Position(891, 1175, 11),
		createTeleport = Position(889, 1179, 11)
	},
}

local function removeTeleport(position)
	local teleportItem = Tile(position):getItemById(37000)
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
	local item = Game.createItem(37000, 1, bossConfig.createTeleport)
	if item:isTeleport() then
		item:setDestination(bossConfig.teleportTo)
	end
	targetMonster:say('Escape through the teleport quickly before it closes!', TALKTYPE_MONSTER_SAY)

	--remove portal after 1 min
	addEvent(spectatorStartCountdown, 500, 1 * 60, bossConfig.createTeleport)
	addEvent(removeTeleport, 1 * 60 * 1000, bossConfig.createTeleport)
	return true
end
killBoss:register()
