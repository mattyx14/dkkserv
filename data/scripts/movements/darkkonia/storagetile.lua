local TileSettings = {
	[5500] = { -- Mystic Flame block Royal Axe Access
		minLevelRequired = 200,
		missionRequired = DarkKonia.FirstSacrifice.fireAxe,
		text = "require fixe axe quest",
		failPosition = Position(898, 1035, 11)
	},
	[5501] = { -- Mystic Flame block Justice Seeker Access
		minLevelRequired = 200,
		missionRequired = DarkKonia.FirstSacrifice.brightSword,
		text = "require bright sword quest",
		failPosition = Position(931, 1084, 11)
	},
	[5502] = { -- Mystic Flame block Blessed Sceptre Access
		minLevelRequired = 200,
		missionRequired = DarkKonia.FirstSacrifice.skullStaff,
		text = "require skull staff quest",
		failPosition = Position(724, 821, 12)
	},
	[5503] = { -- Energy Walls Second Floor Depot Fynn Castle (Access boat to Misidia Settlement)
		minLevelRequired = 30,
		missionRequired = DarkKonia.FirstQuest.Fynn,
		text = "the first quest of fynn",
		failPosition = Position(925, 981, 7)
	},
	[5504] = { -- Entrace to Fire Axe Quest
		minLevelRequired = 80,
		missionRequired = DarkKonia.HidenChest.crownSet,
		text = "require complete crown set quest to use this portal",
		failPosition = Position(579, 1212, 7)
	},
	[5505] = { -- Mystic Flame block Demon Helmet Access
		minLevelRequired = 250,
		missionRequired = DarkKonia.AnniQuest.blessedSceptreDone,
		text = "require blessed sceptre quest",
		failPosition = Position(940, 1076, 8)
	},
	[5506] = { -- Mystic Flame block Demon Helmet Access
		minLevelRequired = 250,
		missionRequired = DarkKonia.AnniQuest.royalAxeDone,
		text = "require royal axe quest",
		failPosition = Position(940, 1076, 8)
	},
	[5507] = { -- Mystic Flame block Demon Helmet Access
		minLevelRequired = 250,
		missionRequired = DarkKonia.AnniQuest.justiceSeekerDone,
		text = "require the justice seeker quest",
		failPosition = Position(940, 1076, 8)
	},
	[5508] = { -- Energy Stairs on Misidia Settlement (Access boat to Fynn Castle)
		minLevelRequired = 30,
		missionRequired = DarkKonia.FirstQuest.Misidia,
		text = "require make the first quest of misidia",
		failPosition = Position(1066, 319, 7)
	},
	[5509] = { -- Require First Sacrifice Knight Axe
		minLevelRequired = 50,
		missionRequired = DarkKonia.FirstSacrifice.noSacrifice.axeKnight,
		text = "require make the first sacrifice knight axe",
		failPosition = Position(977, 945, 8)
	},
	[5510] = { -- Require First Sacrifice Wyvern Fang
		minLevelRequired = 50,
		missionRequired = DarkKonia.FirstSacrifice.noSacrifice.fangWyvern,
		text = "require make the first sacrifice wyvern fang",
		failPosition = Position(973, 1033, 7)
	},
	[5511] = { -- Require First Sacrifice Dragon Hammer 
		minLevelRequired = 50,
		missionRequired = DarkKonia.FirstSacrifice.noSacrifice.hammerDragon,
		text = "require make the first sacrifice dragon hammer",
		failPosition = Position(562, 1266, 6)
	},
	[5512] = { -- Left Vortex / Gazer Spectre
		minLevelRequired = 200,
		missionRequired = DarkKonia.OutfitQuest.ZarabustorDone,
		text = "require done annihilator quest",
		failPosition = Position(864, 971, 8)
	},
	[5513] = { -- Fynn Castle "Fury Trap" -- Shortcut Demon Helmet Quest
		minLevelRequired = 250,
		missionRequired = DarkKonia.AnniQuest.demonHelmetQuest,
		text = "require the demon helmet quest",
		failPosition = Position(894, 984, 8)
	},
	[5514] = { -- Short cut Zarabustor -- Shortcut Zarabustor Outfit Quest
		minLevelRequired = 80,
		missionRequired = DarkKonia.OutfitQuest.ZarabustorDone,
		text = "require complete conjurer outfit quest to use this portal",
		failPosition = Position(1051, 148, 9)
	},
	[5515] = { -- Elfic Ville / Magic Academy -- Enter
		minLevelRequired = 80,
		missionRequired = DarkKonia.HidenChest.nobleArmor,
		text = "require complete noble armor quest to use this portal",
		failPosition = Position(637, 996, 7)
	},
	[5516] = { -- Elfic Ville / Cementery
		minLevelRequired = 80,
		missionRequired = DarkKonia.OutfitQuest.ZarabustorDone,
		text = "require complete conjurer outfit quest to use this portal",
		failPosition = Position(728, 1031, 10)
	},
	[5517] = { -- Fynn Castele / Anger Room
		minLevelRequired = 100,
		missionRequired = DarkKonia.OutfitQuest.ZarabustorDone,
		text = "require complete conjurer outfit quest to use this portal",
		failPosition = Position(900, 933, 12)
	},
	[5518] = { -- Fynn Castle / Fury Room
		minLevelRequired = 100,
		missionRequired = DarkKonia.HidenChest.nobleArmor,
		text = "require complete noble armor quest to use this portal",
		failPosition = Position(1105, 1029, 11)
	},
	[5519] = { -- Fynn Castle / Fury Room
		minLevelRequired = 100,
		missionRequired = DarkKonia.FirstSacrifice.skullStaff,
		text = "require skull staff quest",
		failPosition = Position(1105, 1029, 11)
	},
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

	if player:getLevel() < config.minLevelRequired then 
		player:teleportTo(config.failPosition)
		player:getPosition():sendMagicEffect(CONST_ME_FIREAREA)
		player:say("You need level " ..config.minLevelRequired.. " to join this area.", TALKTYPE_MONSTER_SAY)
		return true
	end

	if player:getStorageValue(config.missionRequired) < 0 then
		player:teleportTo(config.failPosition)
		player:getPosition():sendMagicEffect(CONST_ME_FIREAREA)
		player:say("This area " .. config.text .. ".", TALKTYPE_MONSTER_SAY)
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
