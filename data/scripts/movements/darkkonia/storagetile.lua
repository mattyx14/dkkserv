local failPosition = {
	[5500] = { -- Mystic Flame block Royal Axe Access
		mission = Storage.FirstSacrifice.fireAxe,
		fromPosition = Position(890, 1021, 11),
		missionName = "require fixe axe quest"
	},
	[5501] = { -- Mystic Flame block Justice Seeker Access
		mission = Storage.FirstSacrifice.brightSword,
		fromPosition = Position(931, 1084, 11),
		missionName = "require bright sword quest"
	},
	[5502] = { -- Mystic Flame block Blessed Sceptre Access
		mission = Storage.FirstSacrifice.skullStaff,
		fromPosition = Position(724, 821, 12),
		missionName = "require skull staff quest"
	},
	[5503] = { -- Energy Walls Second Floor Depot Fynn Castle (Access boat to Misidia Settlement)
		mission = Storage.FirstQuest.Fynn,
		fromPosition = Position(925, 981, 7),
		missionName = "the first quest of fynn"
	},
	[5504] = { -- Entrace to Fire Axe Quest
		mission = Storage.HidenChest.crownSet,
		fromPosition = Position(579, 1212, 7),
		missionName = "require complete crown set quest to use this portal"
	},
	[5505] = { -- Mystic Flame block Demon Helmet Access
		mission = Storage.AnniQuest.blessedSceptreDone,
		fromPosition = Position(940, 1076, 8),
		missionName = "require blessed sceptre quest"
	},
	[5506] = { -- Mystic Flame block Demon Helmet Access
		mission = Storage.AnniQuest.royalAxeDone,
		fromPosition = Position(940, 1076, 8),
		missionName = "require royal axe quest"
	},
	[5507] = { -- Mystic Flame block Demon Helmet Access
		mission = Storage.AnniQuest.justiceSeekerDone,
		fromPosition = Position(940, 1076, 8),
		missionName = "require the justice seeker quest"
	},
	[5508] = { -- Energy Stairs on Misidia Settlement (Access boat to Fynn Castle)
		mission = Storage.FirstQuest.Misidia,
		fromPosition = Position(1066, 319, 7),
		missionName = "require make the first quest of misidia"
	},
	[5509] = { -- Require First Sacrifice Knight Axe
		mission = Storage.FirstSacrifice.noSacrifice.axeKnight,
		fromPosition = Position(977, 945, 8),
		missionName = "require make the first sacrifice knight axe"
	},
	[5510] = { -- Require First Sacrifice Wyvern Fang
		mission = Storage.FirstSacrifice.noSacrifice.fangWyvern,
		fromPosition = Position(973, 1033, 7),
		missionName = "require make the first sacrifice wyvern fang"
	},
	[5511] = { -- Require First Sacrifice Dragon Hammer 
		mission = Storage.FirstSacrifice.noSacrifice.hammerDragon,
		fromPosition = Position(562, 1266, 6),
		missionName = "require make the first sacrifice dragon hammer"
	},
	[5512] = { -- Left Vortex / Gazer Spectre
		mission = Storage.OutfitQuest.ZarabustorDone,
		fromPosition = Position(864, 971, 8),
		missionName = "require done annihilator quest"
	},
	[5513] = { -- Fynn Castle "Fury Trap"
		mission = Storage.AnniQuest.AnnihiMission.Done,
		fromPosition = Position(894, 984, 8),
		missionName = "require the demon helmet quest"
	},
	[5514] = { -- Short cut Zarabustor
		mission = Storage.OutfitQuest.ZarabustorDone,
		fromPosition = Position(1051, 148, 9),
		missionName = "require complete conjurer outfit quest to use this portal"
	},
	[5515] = { -- Elfic Ville / Magic Academy
		mission = Storage.HidenChest.nobleArmor,
		fromPosition = Position(637, 996, 7),
		missionName = "require complete conjurer outfit quest to use this portal"
	},
	[5516] = { -- Elfic Ville / Cementery
		mission = Storage.OutfitQuest.ZarabustorDone,
		fromPosition = Position(728, 1031, 10),
		missionName = "require complete conjurer outfit quest to use this portal"
	},
	[5517] = { -- Right Vortex / Old Entrace to raid Morgaroth
		mission = Storage.AnniQuest.AnnihiMission.Done,
		fromPosition = Position(728, 1031, 10),
		missionName = "require complete conjurer outfit quest to use this portal"
	},
}


local storeTileProtection = MoveEvent()
function storeTileProtection.onStepIn(creature, item, position, fromPosition)
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
	player:getPosition():sendMagicEffect(CONST_ME_FIREAREA)
	return true
end

storeTileProtection:type("stepin")
for index, value in pairs(failPosition) do
	storeTileProtection:aid(index)
end
storeTileProtection:register()
