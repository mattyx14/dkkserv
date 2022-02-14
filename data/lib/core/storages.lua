Storage = {
	-- General storages
	isTraining = 30000,
	NpcExhaust = 30001,
	RentedHorseTimer = 30015,
	-- Promotion Storage cannot be changed, it is set in source code
	Promotion = 30018,
	combatProtectionStorage = 30023,
	Factions = 30024,
	blockMovementStorage = 30025,
	FamiliarSummon = 30026,
	NpcSpawn = 30028,
	ExerciseDummyExhaust = 30029,
	StrawberryCupcake = 30032,
	StoreExaust = 30051,
	LemonCupcake = 30052,
	BlueberryCupcake = 30053,
	FamiliarSummonEvent10 = 30054,
	FamiliarSummonEvent60 = 30055,
	PremiumAccount = 30058,

	--[[
	Old storages
	Over time, this will be dropped and replaced by the table above
	]]
	Grimvale = {
		-- Reserved storage from 50380 - 50399
		SilverVein = 50380,
		WereHelmetEnchant = 50381
	},
	ForgottenKnowledge = {
		-- Reserved storage from 50470 - 50519
		LadyTenebrisTimer = 50487,
		LadyTenebrisKilled = 50488,
		Tomes = 50506,
	},
	OutfitQuest = {
		-- Reserved storage from 50960 - 51039
		-- Until all outfit quests are completed
		DefaultStart = 50960,
		Ref = 50961,
		Afflicted = {
			Outfit = 50962,
			AddonPlagueMask = 50963,
			AddonPlagueBell = 50964
		},
		Citizen = {
			-- Mission storages for temporary questlog entries
			MissionHat = 50966,
			AddonHat = 50967,
			MissionBackpack = 50968,
			AddonBackpack = 50969,
			AddonBackpackTimer = 50970
		},
		-- Begger Outfit Quest
		BeggarFirstAddonDoor = 50975, -- Staff quest
		BeggarSecondAddon = 50976,
		-- Druid-outfit Quest
		DruidHatAddon = 50977,
		DruidBodyAddon = 50978,
		DruidAmuletDoor = 50979,
		-- Barbarian-outfit Quest
		BarbarianAddon = 50980,
		BarbarianAddonWaitTimer = 50981,
		-- Beggar
		BeggarOutfit = 50982,
		BeggarOutfitTimer = 50983,
		-- Hunter-outfit Quest
		HunterMusicSheet01 = 50984,
		HunterMusicSheet02 = 50985,
		HunterMusicSheet03 = 50986,
		HunterMusicSheet04 = 50987,
		HunterBodyAddon = 50988,
		HunterHatAddon = 50989,
		Hunter = {
			AddonGlove = 50990,
			AddonHat = 50991
		},
		Knight = {
			AddonSword = 50992,
			MissionHelmet = 50993,
			AddonHelmet = 50994,
			AddonHelmetTimer = 50995,
			RamsaysHelmetDoor = 50996
		},
		MageSummoner = {
			AddonWand = 50997,
			AddonBelt = 50998,
			MissionHatCloak = 50999,
			AddonHatCloak = 51000,
			AddonWandTimer = 51001
		},
		-- Nobleman Outfit
		NoblemanFirstAddon = 51002,
		NoblemanSecondAddon = 51003,
		-- Norseman-outfit Quest
		NorsemanAddon = 51004,
		-- Warrior-outfit Quest
		WarriorShoulderAddon = 51005,
		WarriorSwordAddon = 51006,
		WarriorShoulderTimer = 51007,
		-- Wizard-outfit Quest
		WizardAddon = 51008,
		-- Pirate-outfit Quest
		PirateBaseOutfit = 51009,
		PirateSabreAddon = 51010,
		PirateHatAddon = 51011,
		-- Assassin Outfit
		AssassinBaseOutfit = 51012,
		AssassinFirstAddon = 51013,
		AssassinSecondAddon = 51014,
		-- Golden Outfit
		GoldenOutfit = 51015,
		NightmareOutfit = 51016,
		NightmareDoor = 51017,
		BrotherhoodOutfit = 51018,
		BrotherhoodDoor = 51019,
		Shaman = {
			AddonStaffMask = 51020,
			MissionStaff = 51021,
			MissionMask = 51022
		},
		DeeplingAnchor = 51023,
		FirstOrientalAddon = 51024,
		SecondOrientalAddon = 51025
	},
	DemonOak = {
		-- Reserved storage from 51700 - 51709
		Done = 51700,
		Progress = 51701,
		Squares = 51702,
		AxeBlowsBird = 51703,
		AxeBlowsLeft = 51704,
		AxeBlowsRight = 51705,
		AxeBlowsFace = 51706
	},
	AdventurersGuild = {
		-- Reserved storage from 52130 - 52159
		Stone = 52130,
	},
	TheOrderOfTheLion = {
		-- Reserved storage 52360-52395 (TheRookieGuard)
		-- Reserved storage 52396-52410 (TheOrderOfTheLion)
		Drume = {
			Commander = 52396, -- Global
			TotalLionCommanders = 52397, -- Global
			TotalUsurperCommanders = 52398, -- Global
			Timer = 52399
		},
	},
}

GlobalStorage = {
	Feroxa = {
		-- Reserved storage from 60020 - 60029
		Chance = 60020,
		Active = 60021
	},
	FerumbrasAscendant = {
		-- Reserved storage from 60030 - 60069
		ZamuloshSummon = 60030,
		FerumbrasEssence = 60031,
		DesperateSoul = 60032,
		Crystals = {
			Crystal1 = 60040,
			Crystal2 = 60041,
			Crystal3 = 60042,
			Crystal4 = 60043,
			Crystal5 = 60044,
			Crystal6 = 60045,
			Crystal7 = 60046,
			Crystal8 = 60047,
			AllCrystals = 60048
		},
		Habitats = {
			Roshamuul = 60050,
			Grass = 60051,
			Mushroom = 60052,
			Desert = 60053,
			Venom = 60054,
			Ice = 60055,
			Corrupted = 60056,
			Dimension = 60057,
			AllHabitats = 60058
		},
		Elements = {
			First = 60060,
			Second = 60061,
			Third = 60062,
			Four = 60063,
			Active = 60064,
			Done = 60065
		}
	},
	ForgottenKnowledge = {
		-- Reserved storage from 60090 - 60099
		ActiveTree = 60090,
		MechanismGolden = 60091,
		MechanismDiamond = 60092,
		GoldenServant = 60093,
		DiamondServant = 60094,
		AstralPowerCounter = 60095,
		AstralGlyph = 60096
	},
	InServiceOfYalahar = {
		-- Reserved storage from 60100 - 60109
		LastFight = 60100,
		WarGolemsMachine1 = 60101,
		WarGolemsMachine2 = 60102
	},
	WrathOfTheEmperor = {
		-- Reserved storage from 60120 - 60139
		Light01 = 60120,
		Light02 = 60121,
		Light03 = 60122,
		Light04 = 60123,
		Bosses = {
			Fury = 60130,
			Wrath = 60131,
			Scorn = 60132,
			Spite = 60133
		}
	},
	FuryGates = 65000,
	Yakchal = 65001,
	NaginataStone = 65003,
	ExpBoost = 65004,
	SwordOfFury = 65005,
	XpDisplayMode = 65006,
	OberonEventTime = 65009,
	PrinceDrazzakEventTime = 65010,
	ScarlettEtzelEventTime = 65011,
	CobraBastionFlask = 65012,
	Inquisition = 65013,
	Yasir = 65014,
	NightmareIsle = 65015
}

DarkKonia = {
	ForgottenKnowledge = {
		
	},
	OutfitQuest = {
		ZarabustorDone = 
	},
}

-- Values extraction function
local function extractValues(tab, ret)
	if type(tab) == "number" then
		table.insert(ret, tab)
	else
		for _, v in pairs(tab) do
			extractValues(v, ret)
		end
	end
end

local benchmark = os.clock()
local extraction = {}
extractValues(Storage, extraction) -- Call function
table.sort(extraction) -- Sort the table
-- The choice of sorting is due to the fact that sorting is very cheap O (n log2 (n))
-- And then we can simply compare one by one the elements finding duplicates in O(n)

-- Scroll through the extracted table for duplicates
if #extraction > 1 then
	for i = 1, #extraction - 1 do
		if extraction[i] == extraction[i+1] then
			Spdlog.warn(string.format("Duplicate storage value found: %d",
				extraction[i]))
			Spdlog.warn(string.format("Processed in %.4f(s)", os.clock() - benchmark))
		end
	end
end
