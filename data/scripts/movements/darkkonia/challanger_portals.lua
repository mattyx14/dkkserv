local destination = {
	[24876] = { -- Demon Helmet
		newPos = Position(1018, 1071, 10),
		backPos = Position(1020, 1059, 10),
		timer = Storage.FynnQuest.DemonHelmetTimmer
	},
	[24878] = { -- Lady Tenebris
		newPos = Position(1127, 1080, 15),
		backPos = Position(1095, 1080, 15),
		timer = Storage.ForgottenKnowledge.LadyTenebrisTimer
	},
	[24879] = { -- Jaul
		newPos = Position(1133, 461, 14),
		backPos = Position(1138, 472, 14),
		timer = Storage.MisidiaQuest.JaulTimer
	},
	[24880] = { -- Infernus Room
		newPos = Position(472, 168, 9),
		backPos = Position(495, 176, 9),
		timer = Storage.AnsharaPOI.InfernusTimer
	},
	[24881] = { -- Gazer
		newPos = Position(679, 948, 11),
		backPos = Position(712, 963, 13),
		timer = Storage.FynnQuest.GazerTimer
	},
	[24882] = { -- Black Magician
		newPos = Position(821, 1186, 10),
		backPos = Position(876, 1168, 10),
		timer = Storage.ElficVille.BlackMagicianTimer,
	},
}

local challangerPortals = MoveEvent()
function challangerPortals.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return
	end

	local teleport = destination[item.uid]
	if not teleport then
		return
	end
	if player:getStorageValue(teleport.timer) <= os.time() then
		position:sendMagicEffect(CONST_ME_TELEPORT)
		player:teleportTo(teleport.newPos)
		player:getPosition():sendMagicEffect(CONST_ME_FIREAREA)
		return true
	else
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:teleportTo(teleport.backPos)
		player:getPosition():sendMagicEffect(CONST_ME_FIREAREA)
		player:say("You haven't permission to use this teleport.", TALKTYPE_MONSTER_SAY)
		return true
	end

	return true
end

challangerPortals:type("stepin")
for index, value in pairs(destination) do
	challangerPortals:uid(index)
end
challangerPortals:register()
