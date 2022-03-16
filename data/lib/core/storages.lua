-- Last: 
-- thirdTip = 30277

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
	OutfitQuest = {
		-- Reserved storage from 50960 - 51039
		-- Until all outfit quests are completed
		DefaultStart = 50960,
		Ref = 50961,
		-- Golden Outfit
		GoldenOutfit = 51015,
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
	ExpBoost = 65004,
	XpDisplayMode = 65006,
	OberonEventTime = 65009,
	ScarlettEtzelEventTime = 65011,
	CobraBastionFlask = 65012
}

-- DarkKonia Storages
DarkKonia = {
	-- Star 30100
	NpcSpawn = 30100,
	DefaultStartQuest = 30101,
	AnnihilatorDone = 30102,
	demonHelmetQuest = 30103,
	ForgottenKnowledge = {
		GirlPicture = 30104, -- Fynn = 26400
		SilverKey = 30105, -- Fynn
		GhostSilverLantern = 30252, -- Fynn
		LadyTenebrisTimer = 30106, -- Fynn
		LadyTenebrisKilled = 30107, -- Fynn
		ForgottenKnowledgeRewards = {
			yalahariSet = 30108,
		},
		DragonkingTimer = 30109, -- Anshara
		DragonkingKilled = 30110, -- Anshara

		-- Internal Usage
		Tomes = 30111,
	},
	DemonOak = {
		Done = 30112,
		Progress = 30113,
		Squares = 30114,

		AxeBlowsBird = 30115,
		AxeBlowsLeft = 30116,
		AxeBlowsRight = 30117,
		AxeBlowsFace = 30118
	},
	Missions = {
		DjinnMission = {
			Lamp1 = 30119,
			Lamp2 = 30120,
			Done = 30121,
			-- lichStaff = DarkKonia.Missions.DjinnMission.Done (uid:30258) = 30121,
			-- assassinDagger = DarkKonia.Missions.DjinnMission.Done (uid:30259) = 30121,
		},
	},
	VampireQuest = {
		zevelonDuskbringer = 30122,
			BossStorageDusk = 30123,
		sirValorcrest = 30124,
			BossStorageVarlor = 30125,
		diblisTheFair = 30126,
			BossStorageFair = 30127,
		arachirTheAncientOne = 30128,
			BossStorageOne = 30129,

		draculaDone = 30130,
		draculaStone = 30131
	},
	AnniQuest = {
		justiceSeekerDone = 30132,
		blessedSceptreDone = 30133,
		royalAxeDone = 30134,
		pirateDone = 30135,
		deathHeraldDone = 30136,
		assassinDone = 30137,
		anniKey = 30138,
		AnnihiMission = {
			Done = 30139,
			-- magicSword = DarkKonia.Missions.AnnihiMission.Done (uid:30260) = 30139,
			-- thunderHammer = DarkKonia.Missions.AnnihiMission.Done (uid:30261) = 30139,
			-- stoncutterAxe = DarkKonia.Missions.AnnihiMission.Done (uid:30262) = 30139,
		},
	},
	FirstQuest = {
		FirstWeapon = 30140,
		FirstWeaponClub = 30266,
		FirstWeaponSword = 30267,
		FirstWeaponAxe = 30268,
		Fynn = 30141,
			rewardFynn = 30142,
		Misidia = 30143,
			rewardMisidia = 30144,
	},
	FynnQuest =  {
		DemonHelmetTimmer = 30145,
		GazerTimer = 30146,
	},
	FirstSacrifice = {
		firstTip = 30274,
		knightAxe = 30147,
		-- royalAxe = royalAxeDone,
		wyvernFang = 30150,
		-- justiceSeeker = justiceSeekerDone,
		dragonHammer = 30153,
		--blessedSceptre = blessedSceptreDone,
		noSacrifice = {
			fangWyvern = 30156,
			axeKnight = 30157,
			hammerDragon = 30158,
		}
	},
	SecondSacrifice = {
		secondTip = 30276,
		heroicAxe = 30148,
		mysticBlade = 30151,
		amberStaff = 30154,
	},
	ThirdSacrifice = {
		thirdTip = 30277,
		fireAxe = 30149,
		brightSword = 30152,
		skullStaff = 30155,
	},
	Rewards = {
		firstLevelReward = 30159,
		secondLevelReward = 30160,
		thirdLevelReward = 30161,
		fourthLevelReward = 30162,
		fivthLevelReward = 30163,
		sixthLevelReward = 30164,
		seventhLevelReward = 30165,
	},
	HidenChest = {
		puppeteerOutfit = 30166,
		suddenDeathWarlockFynn = 30167,
		frozenStarLightFynn = 30168,
		legionHelmet = 30169,
		eagleShield = 30170,
		nobleArmor = 30171,
		dragonScaleMail = 30172,
		ceremonialMask = 30173,
		guardianShield = 30174,
		bonelordShield = 30175,
		castleShield = 30176,
		marryOutfit = 30177,
		orientalOutfit = 30178,
		crystalCoinSohan = 30179,
		menssageInABotte = 30180,
		soulStone = 30181,
		minoLeathers = 30182,
		ironOres = 30183,
		pawsAndCombs = 30184,
		coralComb = 30185,
		noseRing = 30186,
		blackSteelSword = 30187,
		onyxFail = 30188,
		demonHunterOutfit = 30189,
		chaosAcolyteOutfit = 30190,
		crystallineArmor = 30191,
		magmaSet = 30192,
		lightningSet = 30193,
		insectoidOutfit = 30194,
		deaplingOutfit = 30195,
		hiddenCity = { -- Acces Vaargdon Mine
			OreWagon = 30196,
		},
		basicKnightSet = 30197,
		crownSet = 30198,
		basicHunterSet = 30199,
		blueSetReward = 30250,
		SD_UH_Reward = 30251,
		shieldOfHonour = 30253,
		SD_Reward = 30254,
		steelHelmet = 30255,
		ElaneCrossbow = 30256,
		swamPlairArmor = 30257,
		clericalMace = 30263,
		barbarianAxe = 30264,
		crimsonSword = 30265,
	},
	MisidiaQuest = {
		DeaplingJaulTimer = 30200,
		JaulTimer = 30201,
		JaulKilled = 30202,
	},
	ElficVille = {
		BlackMagicianTimer = 30203,
		BlackKnightKilled = 30204,
	},
	AnsharaPOI = {
		-- Izcandar
		IzcandarWinterKilled = 30205,
		IzcandarWinterTimer = 30206,
		-- Infernus
		InfernusKilled = 30207,
		InfernusTimer = 30208,
		ritualInfernus = 30209,
	},
	ArusBosses = {
		-- Fyzarus
		FyzarusKilled = 30210,
		FyzarusTimer = 30211,
	},
	Quest = {
		Key = {
			ID1219 = 30212, -- Annihilator II Key
			ID2088 = 30213, -- Pirate Ghost Key // Fynn Castle
			ID2089 = 30214, -- Pirate Bars Key // Fynn Settlement
			ID5001 = 30215, -- Falcon Bastion // Misidia Settlement
			ID5002 = 30216, -- amaged Steel Helmet // Ansara Desert
			ID2585 = 30217, -- Conjurer Outfit Quest Key 1
			ID2586 = 30218, -- Conjurer Outfit Quest Key 2
			ID2587 = 30219, -- Conjurer Outfit Quest Key 3
			ID2090 = 30220, -- Pirate Bars Key Boss // Misidia Settlement
		},
		goldenKeyFynn = 30221,
		goldenKeyMisidia = 30222,
		Javierkeys = 30275,
	},
	OutfitQuest = {
		DefaultStart = 30223,
		Ref = 30224,
		-- Citizen Addons Quest
		Citizen = {
			-- Mission storages for temporary questlog entries
			MissionHat = 30225,
			AddonHat = 30226,
			MissionBackpack = 30227,
			AddonBackpack = 30228,
			AddonBackpackTimer = 30229
		},
		-- Hunter Addons Quest
		HunterHatAddon = 30230,
		Hunter = {
			AddonGlove = 30231,
			AddonHat = 30232
		},
		-- Knight Addons Quest
		Knight = {
			AddonSword = 30233,
			MissionHelmet = 30234,
			AddonHelmet = 30235,
			AddonHelmetTimer = 30236,
			RamsaysHelmetDoor = 30237
		},
		-- Warrior-outfit Quest
		WarriorShoulderAddon = 30238,
		WarriorSwordAddon = 30239,
		WarriorShoulderTimer = 30240,
		-- Mage/Summoner-outfit Quest
		MageSummoner = {
			AddonWand = 30241,
			AddonBelt = 30242,
			MissionHatCloak = 30243,
			AddonHatCloak = 30244,
			AddonWandTimer = 30245
		},
		-- Conjurer Outfit
		ZarabustorKilled = 30246,
		ZarabustorTimmer = 30247,
		ZarabustorDone = 30248,
		ZarabustorReward = 30249,
		-- Pirate Outfit
		KrakenKilled = 30270,
		KrakenTimmer = 30271,
		KrakenDone = 30272,
		KrakenReward = 30273
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
