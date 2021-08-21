Storage = {
	-- General storages
	isTraining = 30000,
	NpcExhaust = 30001,
	NpcExhaustOnBuy = 30002,
	KawillBlessing = 30014,
	RentedHorseTimer = 30015,
	-- Promotion Storage cannot be changed, it is set in source code
	Promotion = 30018,
	combatProtectionStorage = 30023,
	Factions = 30024,
	blockMovementStorage = 30025,
	PetSummon = 30026,
	NpcSpawn = 30028,
	ExerciseDummyExhaust = 30029,
	StrawberryCupcake = 30032,
	StoreExaust = 30051,
	LemonCupcake = 30052,
	BlueberryCupcake = 30053,
	PetSummonEvent10 = 30054,
	PetSummonEvent60 = 30055,
	FreeQuests = 990000,
	PremiumAccount = 998899,

	-- Reserverd from Global
	Grimvale = {
		-- Reserved storage from 50380 - 50399
		WereHelmetEnchant = 50381
	},
	ForgottenKnowledge = {
		GirlPicture = 10140, -- Fynn = 26400
		SilverKey = 10141, -- Fynn
		LadyTenebrisTimer = 10168, -- Fynn
		LadyTenebrisKilled = 10150, -- Fynn
		DragonkingTimer = 10169, -- Anshara
		DragonkingKilled = 10156, -- Anshara

		-- Internal Usage
		LloydKilled = 10152,
		ThornKnightKilled = 10154,
		HorrorKilled = 10158,
		TimeGuardianKilled = 10160,
		LastLoreKilled = 10162,
		Tomes = 10167,
	},
	OutfitQuest = {
		DefaultStart = 12010, -- until all outfit quests are completed
		Ref = 12007,
		-- Citizen Addons Quest
		Citizen = {
			-- Mission storages for temporary questlog entries
			MissionHat = 12009,
			AddonHat = 12011,
			MissionBackpack = 12008,
			AddonBackpack = 12012,
			AddonBackpackTimer = 12017
		},
		-- Hunter Addons Quest
		HunterHatAddon = 12053,
		Hunter = {
			AddonGlove = 12054,
			AddonHat = 12055
		},
		-- Knight Addons Quest
		Knight = {
			AddonSword = 12153,
			MissionHelmet = 12154,
			AddonHelmet = 12155,
			AddonHelmetTimer = 12156,
			RamsaysHelmetDoor = 12160
		},
		-- Warrior-outfit Quest
		WarriorShoulderAddon = 12067,
		WarriorSwordAddon = 12068,
		WarriorShoulderTimer = 12071,
		-- Mage/Summoner-outfit Quest
		MageSummoner = {
			AddonWand = 12061,
			AddonBelt = 12062,
			MissionHatCloak = 12063,
			AddonHatCloak = 12064,
			AddonWandTimer = 12072
		},
		-- Golden Outfit
		GoldenOutfit = 51015,
	},
	AdventurersGuild = {
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
	Quest = {
		Key = {
			ID1219 = 1219, -- Annihilator II Key
			ID2088 = 2088, -- Pirate Bars Key // Fynn Castle
			ID2088 = 2090, -- Pirate Bars Key // Misidia Settlement
			ID5001 = 5001, -- Falcon Bastion // Misidia Settlement
			ID5002 = 5002, -- amaged Steel Helmet // Ansara Desert
			ID2585 = 2585, -- Conjurer Outfit Quest Key 1
			ID2586 = 2586, -- Conjurer Outfit Quest Key 2
			ID2587 = 2587, -- Conjurer Outfit Quest Key 3
			ID2090 = 2590, -- Pirate Bars Key // Misidia Settlement
		},
		goldenKeyFynn = 3135,
		goldenKeyMisidia = 3136,
	},

	-- DarkKonia
	-- DarkKonia Storages
	DefaultStartQuest = 15700,
	AnnihilatorDone = 2215,
	DemonOak = {
		Done = 1010,
		Progress = 1013,
		Squares = 1014,

		AxeBlowsBird = 8288,
		AxeBlowsLeft = 8289,
		AxeBlowsRight = 8290,
		AxeBlowsFace = 8291
	},
	Missions = {
		DjinnMission = {
			Lamp1 = 2062,
			Lamp2 = 2063,
			Done = 24073
		},
	},
	VampireQuest = {
		zevelonDuskbringer = 8568,
			BossStorageDusk = 10001,
		sirValorcrest = 8569,
			BossStorageVarlor = 10002,
		diblisTheFair = 8570,
			BossStorageFair = 10003,
		arachirTheAncientOne = 8571,
			BossStorageOne = 10004,

		draculaDone = 10009,
		draculaStone = 50058
	},
	AnniQuest = {
		justiceSeekerDone = 7390,
		blessedSceptreDone = 7429,
		royalAxeDone = 7434,
		pirateDone = 6096,
		conjurerDone = 2662,
		deathHeraldDone = 10008,
		assassinDone = 9933,
		anniKey = 2526,
		AnnihiMission = {
			Done = 24074
		},
	},
	FirstQuest = {
		Fynn = 12519,
			rewardFynn = 2527,
		Misidia = 12520,
			rewardMisidia = 2528,
	},
	FynnQuest =  {
		GazerTimer = 10190,
	},
	FirstSacrifice = {
		knightAxe = 2430,
		heroicAxe = 7389,
		fireAxe = 2432,
		-- royalAxe = royalAxeDone,
		wyvernFang = 7408,
		mysticBlade = 7384,
		brightSword = 2407,
		-- justiceSeeker = justiceSeekerDone,
		dragonHammer = 2434,
		amberStaff = 7426,
		skullStaff = 2436,
		--blessedSceptre = blessedSceptreDone,
		noSacrifice = {
			fangWyvern = 800,
			axeKnight = 801,
			hammerDragon = 802,
		}
	},
	Rewards = {
		firstLevelReward = 3101,
		secondLevelReward = 3102,
		thirdLevelReward = 3103,
		fourthLevelReward = 3104,
		fivthLevelReward = 3105,
		sixthLevelReward = 3106,
		seventhLevelReward = 3107,
	},
	basicKnightSet = 16766,
	crownSet = 2487,
	basicHunterSet = 8891,
	-- blueSet = conjurerDone,
	demonHelmetQuest = 2493,
	HidenChest = {
		puppeteerOutfit = 1449,
		suddenDeathWarlockFynn = 2222,
		frozenStarLightFynn = 2361,
		legionHelmet = 2480,
		eagleShield = 2538,
		nobleArmor = 2486,
		dragonScaleMail = 2492,
		ceremonialMask = 2501,
		guardianShield = 2515,
		bonelordShield = 2518,
		castleShield = 2535,
		marryOutfit = 3697,
		orientalOutfit = 8267,
		crystalCoinSohan = 50181,
		menssageInABotte = 5802,
		soulStone = 5809,
		minoLeathers = 5878,
		ironOres = 5888,
		pawsAndCombs = 5902,
		coralComb = 5945,
		noseRing = 6107,
		blackSteelSword = 7406,
		onyxFail = 7421,
		demonHunterOutfit = 7431,
		chaosAcolyteOutfit = 8820,
		crystallineArmor = 8878,
		-- deathHeraldOutfit = draculaDone,
		-- assassinOutfit = assassinDone,
		magmaSet = 30492,
		lightningSet = 30493,
		insectoidOutfit = 14699,
		deaplingOutfit = 15545,
		hiddenCity = { -- Acces Vaargdon Mine
			OreWagon = 25475,
		},
	},
	ForgottenKnowledgeRewards = {
		yalahariSet = 9776,
	},
	MisidiaQuest = {
		JaulTimer = 8422,
		JaulKilled = 10139,
	},
	AnsharaPOI = {
		-- Izcandar
		IzcandarWinterKilled = 10540,
		IzcandarWinterTimer = 10541,
		-- Infernus
		InfernusKilled = 10542,
		InfernusTimer = 10543,
		ritualInfernus = 10544,
	},
	ArusBosses = {
		-- Fyzarus
		FyzarusKilled = 10545,
		FyzarusTimer = 10546,
	},
}

GlobalStorage = {
	ExpBoost = 65004,
	XpDisplayMode = 65006,
	CobraBastionFlask = 65012,

	-- DarkKonia
	ForgottenKnowledge = {
		TenebrisTimer = 566093,
		ActiveTree = 566095,
		MechanismGolden = 566096,
		MechanismDiamond = 566097,
		GoldenServant = 566098,
		DiamondServant = 566099,
		AstralPowerCounter = 566100,
		AstralGlyph = 566101,
		LloydTimer = 566102,
		ThornKnightTimer = 566103,
		DragonkingTimer = 566104,
		HorrorTimer = 566105,
		TimeGuardianTimer = 566106,
		LastLoreTimer = 566107
	},
	MisidiaQuest = {
		DeaplingJaulTimer = 566110,
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
