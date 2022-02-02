local TileSettings = {
	[5500] = { -- Mystic Flame block Royal Axe Access
		minLevel = 200,
		mission = Storage.FirstSacrifice.fireAxe,
		teleport = Position(890, 1021, 11),
		missionName = "require fixe axe quest"
	},
	[5501] = { -- Mystic Flame block Justice Seeker Access
		minLevel = 200,
		mission = Storage.FirstSacrifice.brightSword,
		teleport = Position(931, 1084, 11),
		missionName = "require bright sword quest"
	},
	[5502] = { -- Mystic Flame block Blessed Sceptre Access
		minLevel = 200,
		mission = Storage.FirstSacrifice.skullStaff,
		teleport = Position(724, 821, 12),
		missionName = "require skull staff quest"
	},
	[5503] = { -- Energy Walls Second Floor Depot Fynn Castle (Access boat to Misidia Settlement)
		minLevel = 30,
		mission = Storage.FirstQuest.Fynn,
		teleport = Position(925, 981, 7),
		missionName = "the first quest of fynn"
	},
	[5504] = { -- Entrace to Fire Axe Quest
		minLevel = 80,
		mission = Storage.HidenChest.crownSet,
		teleport = Position(579, 1212, 7),
		missionName = "require complete crown set quest to use this portal"
	},
	[5505] = { -- Mystic Flame block Demon Helmet Access
		minLevel = 250,
		mission = Storage.AnniQuest.blessedSceptreDone,
		teleport = Position(940, 1076, 8),
		missionName = "require blessed sceptre quest"
	},
	[5506] = { -- Mystic Flame block Demon Helmet Access
		minLevel = 250,
		mission = Storage.AnniQuest.royalAxeDone,
		teleport = Position(940, 1076, 8),
		missionName = "require royal axe quest"
	},
	[5507] = { -- Mystic Flame block Demon Helmet Access
		minLevel = 250,
		mission = Storage.AnniQuest.justiceSeekerDone,
		teleport = Position(940, 1076, 8),
		missionName = "require the justice seeker quest"
	},
	[5508] = { -- Energy Stairs on Misidia Settlement (Access boat to Fynn Castle)
		minLevel = 80,
		mission = Storage.FirstQuest.Misidia,
		teleport = Position(1066, 319, 7),
		missionName = "require make the first quest of misidia"
	},
	[5509] = { -- Require First Sacrifice Knight Axe
		minLevel = 50,
		mission = Storage.FirstSacrifice.noSacrifice.axeKnight,
		teleport = Position(977, 945, 8),
		missionName = "require make the first sacrifice knight axe"
	},
	[5510] = { -- Require First Sacrifice Wyvern Fang
		minLevel = 50,
		mission = Storage.FirstSacrifice.noSacrifice.fangWyvern,
		teleport = Position(973, 1033, 7),
		missionName = "require make the first sacrifice wyvern fang"
	},
	[5511] = { -- Require First Sacrifice Dragon Hammer 
		minLevel = 50,
		mission = Storage.FirstSacrifice.noSacrifice.hammerDragon,
		teleport = Position(562, 1266, 6),
		missionName = "require make the first sacrifice dragon hammer"
	},
	[5512] = { -- Left Vortex / Gazer Spectre
		minLevel = 200,
		mission = Storage.OutfitQuest.ZarabustorDone,
		teleport = Position(864, 971, 8),
		missionName = "require done annihilator quest"
	},
	[5513] = { -- Fynn Castle "Fury Trap"
		minLevel = 800,
		mission = Storage.AnniQuest.AnnihiMission.Done,
		teleport = Position(894, 984, 8),
		missionName = "require the demon helmet quest"
	},
	[5514] = { -- Short cut Zarabustor
		minLevel = 80,
		mission = Storage.OutfitQuest.ZarabustorDone,
		teleport = Position(1051, 148, 9),
		missionName = "require complete conjurer outfit quest to use this portal"
	},
	[5515] = { -- Elfic Ville / Magic Academy
		minLevel = 80,
		mission = Storage.HidenChest.nobleArmor,
		teleport = Position(637, 996, 7),
		missionName = "require complete conjurer outfit quest to use this portal"
	},
	[5516] = { -- Elfic Ville / Cementery
		minLevel = 80,
		mission = Storage.OutfitQuest.ZarabustorDone,
		teleport = Position(728, 1031, 10),
		missionName = "require complete conjurer outfit quest to use this portal"
	},
--[[
	[5517] = { -- Right Vortex / Old Entrace to raid Morgaroth
		minLevel = 250,
		mission = Storage.AnniQuest.AnnihiMission.Done,
		teleport = Position(728, 1031, 10),
		missionName = "require complete conjurer outfit quest to use this portal"
	},
]]
}


local storeTileProtection = MoveEvent()
function storeTileProtection.onStepIn(creature, item, position, fromPosition)
	local config = TileSettings[item.actionid]
	if not config then
		return true
	end

	local player = creature:getPlayer()
	if not player then
		return true
	end

	if player:getLevel() < config.minLevel then 
		player:teleportTo(config.teleport)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need level " ..config.minLevel.. " to join this area.")
		player:getPosition():sendMagicEffect(CONST_ME_FIREAREA)
		return true
	end

	if player:getStorageValue(config.mission) < 0 then
		player:teleportTo(config.teleport)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'This area ' .. config.missionName .. '.')
		player:getPosition():sendMagicEffect(CONST_ME_FIREAREA)
		return true
	end

	player:getPosition():sendMagicEffect(CONST_ME_ENERGYAREA)
	return true
end

storeTileProtection:type("stepin")
for index, value in pairs(TileSettings) do
	storeTileProtection:aid(index)
end
storeTileProtection:register()
