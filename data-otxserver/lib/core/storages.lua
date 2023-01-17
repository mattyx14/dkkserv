-- Last: 
-- spellbookofMindControl = 70289

Storage = {
	-- General storages
	isTraining = 30000,
	NpcExhaust = 30001,
	-- Promotion Storage cannot be changed, it is set in source code
	RentedHorseTimer = 30015,
	Promotion = 30018,
	combatProtectionStorage = 30023,
	Factions = 30024,
	blockMovementStorage = 30025,
	FamiliarSummon = 30026,
	TrainerRoom = 30027,
	NpcSpawn = 30028,
	ExerciseDummyExhaust = 30029,
	StrawberryCupcake = 30032,
	StoreExaust = 30051,
	LemonCupcake = 30052,
	BlueberryCupcake = 30053,
	FamiliarSummonEvent10 = 30054,
	FamiliarSummonEvent60 = 30055,
	FreeQuests = 30057,
	PremiumAccount = 30058,

	--[[
	Old storages
	Over time, this will be dropped and replaced by the table above
	]]
	Quest = {
		U8_5 = { -- update 8.5 - Reserved Storages 42146 - 42550
			KillingInTheNameOf = {
				MonsterKillCount = {
					KillCount = 42150,
					-- Grizzly Adams
					CrocodileCount = 42151,
					BadgerCount = 42152,
					TarantulaCount = 42153,
					CarniphilasCount = 42154,
					StoneGolemCount = 42155,
					MammothCount = 42156,
					GnarlhoundCount = 42157,
					TerramiteCount = 42158,
					ApesCount = 42159,
					ThornbackTortoiseCount = 42160,
					GargoyleCount = 42161,
					IceGolemCount = 42162,
					QuaraScoutsCount = 42163,
					MutatedRatCount = 42164,
					AncientScarabCount = 42165,
					WyvernCount = 42166,
					LancerBeetleCount = 42167,
					WailingWidowCount = 42168,
					KillerCaimanCount = 42169,
					BonebeastCount = 42170,
					CrystalSpiderCount = 42171,
					MutatedTigerCount = 42172,
					UnderwaterQuarasCount = 42173,
					GiantSpiderCount = 42174,
					WerewolveCount = 42175,
					NightmareCount = 42176,
					HellspawnCount = 42177,
					HighClassLizardCount = 42178,
					StamporCount = 42179,
					BrimstoneBugCount = 42180,
					MutatedBatCount = 42181,
					HydraCount = 42182,
					SerpentSpawnCount = 42183,
					MedusaCount = 42184,
					BehemothCount = 42185,
					SeaSerpentsCount = 42186,
					HellhoundCount = 42187,
					GhastlyDragonCount = 42188,
					DrakenCount = 42189,
					DestroyerCount = 42190,
					UndeadDragonCount = 42191,
					DemonCount = 42192,
					-- Others
					GreenDjinnCount = 42193,
					BlueDjinnCount = 42194,
					PirateCount = 42195,
					MinotaurCount = 42196,
					NecromancerCount = 42197,
					TrollCount = 42198,
					GoblinCount = 42199,
					RotwormCount = 42200,
					CyclopsCount = 42201,
				},
				BossKillCount = {
					-- Grizzly Adams
					SnapperCount = 42350,
					HideCount = 42351,
					DeathbineCount = 42352,
					BloodtuskCount = 42353,
					ShardheadCount = 42354,
					EsmeraldaCount = 42355,
					FleshcrawlerCount = 42356,
					RibstrideCount = 42357,
					BloodwebCount = 42358,
					ThulCount = 42359,
					WidowCount = 42360,
					HemmingCount = 42361,
					TormentorCount = 42362,
					FlamebornCount = 42363,
					FazzrahCount = 42364,
					TromphonyteCount = 42365,
					ScuttlerCount = 42366,
					PayneCount = 42367,
					ManyCount = 42368,
					NoxiousCount = 42369,
					GorgoCount = 42370,
					StonecrackerCount = 42371,
					LeviathanCount = 42372,
					KerberosCount = 42373,
					EthershreckCount = 42374,
					PauperizerCount = 42375,
					BretzecutionerCount = 42376,
					ZanakephCount = 42377,
					TiquandasCount = 42378,
					DemodrasCount = 42379,
					-- Others
					NecropharusCount = 42380,
					FoxCount = 42381,
					PiratesCount = 42382,
					MerikhCount = 42383,
					FahimCount = 42384,
				},
			},
		},
	},
	Grimvale = {
		-- Reserved storage from 50380 - 50399
		WereHelmetEnchant = 50381
	},
	ForgottenKnowledge = {
		Tomes = 50506,
	},
	OutfitQuest = {
		-- Reserved storage from 50960 - 51039
		-- Until all outfit quests are completed
		DefaultStart = 50960,
		-- Golden Outfit
		GoldenOutfit = 51015,
	},
	Diapason = {
		-- Reserved storage from 52120 - 52129
		Lyre = 52120,
		LyreTimer = 52121,
		Edala = 52122,
		EdalaTimer = 52123
	},
	KillingInTheNameOf = {
		-- Reserved storage from 51610 - 51629
		LugriNecromancers = 51610,
		BudrikMinos = 51611,
		MissionTiquandasRevenge = 51612,
		MissionDemodras = 51613,
		BossPoints = 51614,
		QuestLogEntry = 51615,
		PawAndFurRank = 51616,
		GreenDjinnTask = 51617,
		BlueDjinnTask = 51618,
		PirateTask = 51619,
		TrollTask = 51620,
		GoblinTask = 51621,
		RotwormTask = 51622,
		CyclopsTask = 51623
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
	ExpBoost = 65004,
	XpDisplayMode = 65006,
	CobraBastionFlask = 65012,
	UglyMonster = 65017,
	KeysUpdate = 40000, -- Reserved storage from 40000 - 40000
}

-- DarkKonia Storages
DarkKonia = {
	-- Star 70100
	DefaultStartQuest = 70101,
	AnnihilatorDone = 70102,
	DemonHelmetQuest = {
		DemonTimmer = 70284,
		DemonKilled = 70103,
	},
	ForgottenKnowledge = {
		GirlPicture = 70104, -- Fynn = 26400
		SilverKey = 70105, -- Fynn
		GhostSilverLantern = 70252, -- Fynn
		LadyTenebrisTimer = 70106, -- Fynn
		LadyTenebrisKilled = 70107, -- Fynn
		ForgottenKnowledgeRewards = {
			yalahariSet = 70108,
		},
		DragonkingTimer = 70109, -- Anshara
		DragonkingKilled = 70110, -- Anshara

		-- Internal Usage
		Tomes = 70111,
	},
	DemonOak = {
		Done = 70112,
		Progress = 70113,
		Squares = 70114,

		AxeBlowsBird = 70115,
		AxeBlowsLeft = 70116,
		AxeBlowsRight = 70117,
		AxeBlowsFace = 70118
	},
	Missions = {
		DjinnMission = {
			Lamp1 = 70119,
			Lamp2 = 70120,
			Done = 70121,
			-- lichStaff = DarkKonia.Missions.DjinnMission.Done (uid:30258) = 70121,
			-- assassinDagger = DarkKonia.Missions.DjinnMission.Done (uid:30259) = 70121,
		},
	},
	VampireQuest = {
		zevelonDuskbringer = 70122,
			BossStorageDusk = 70123,
		sirValorcrest = 70124,
			BossStorageVarlor = 70125,
		diblisTheFair = 70126,
			BossStorageFair = 70127,
		arachirTheAncientOne = 70128,
			BossStorageOne = 70129,

		draculaDone = 70130,
		draculaStone = 70131
	},
	AnniQuest = {
		justiceSeekerDone = 70132,
		blessedSceptreDone = 70133,
		royalAxeDone = 70134,
		pirateDone = 70135,
		deathHeraldDone = 70136,
		assassinDone = 70137,
		anniKey = 70138,
		AnnihiMission = {
			Done = 70139,
			-- magicSword = DarkKonia.Missions.AnnihiMission.Done (uid:30260) = 70139,
			-- thunderHammer = DarkKonia.Missions.AnnihiMission.Done (uid:30261) = 70139,
			-- stoncutterAxe = DarkKonia.Missions.AnnihiMission.Done (uid:30262) = 70139,
		},
	},
	FirstQuest = {
		FirstWeapon = 70140,
		FirstWeaponClub = 70266,
		FirstWeaponSword = 70267,
		FirstWeaponAxe = 70268,
		Fynn = 70141,
			rewardFynn = 70142,
		Misidia = 70143,
			rewardMisidia = 70144,
		RewardSacrifice = 70282,
		finalTip = 70283,
	},
	FynnQuest =  {
		GazerTimer = 70146,
	},
	FirstSacrifice = {
		firstTip = 70274,
		knightAxe = 70147,
		-- royalAxe = royalAxeDone,
		wyvernFang = 70150,
		-- justiceSeeker = justiceSeekerDone,
		dragonHammer = 70153,
		--blessedSceptre = blessedSceptreDone,
		noSacrifice = {
			fangWyvern = 70156,
			axeKnight = 70157,
			hammerDragon = 70158,
		}
	},
	SecondSacrifice = {
		secondTip = 70276,
		heroicAxe = 70148,
		mysticBlade = 70151,
		amberStaff = 70154,
	},
	ThirdSacrifice = {
		thirdTip = 70277,
		fireAxe = 70149,
		brightSword = 70152,
		skullStaff = 70155,
	},
	Rewards = {
		firstLevelReward = 70159,
		secondLevelReward = 70160,
		thirdLevelReward = 70161,
		fourthLevelReward = 70162,
		fivthLevelReward = 70163,
		sixthLevelReward = 70164,
		seventhLevelReward = 70165,
	},
	HidenChest = {
		puppeteerOutfit = 70166,
		suddenDeathWarlockFynn = 70167,
		frozenStarLightFynn = 70168,
		legionHelmet = 70169,
		eagleShield = 70170,
		nobleArmor = 70171,
		dragonScaleMail = 70172,
		ceremonialMask = 70173,
		guardianShield = 70174,
		bonelordShield = 70175,
		castleShield = 70176,
		marryOutfit = 70177,
		orientalOutfit = 70178,
		crystalCoinSohan = 70179,
		menssageInABotte = 70180,
		soulStone = 70181,
		minoLeathers = 70182,
		ironOres = 70183,
		pawsAndCombs = 70184,
		coralComb = 70185,
		noseRing = 70186,
		blackSteelSword = 70187,
		onyxFail = 70188,
		demonHunterOutfit = 70189,
		chaosAcolyteOutfit = 70190,
		crystallineArmor = 70191,
		magmaSet = 70192,
		lightningSet = 70193,
		insectoidOutfit = 70194,
		deaplingOutfit = 70195,
		hiddenCity = { -- Acces Vaargdon Mine
			OreWagon = 70196,
		},
		basicKnightSet = 70197,
		crownSet = 70198,
		basicHunterSet = 70199,
		blueSetReward = 70250,
		SD_UH_Reward = 70251,
		shieldOfHonour = 70253,
		SD_Reward = 70254,
		steelHelmet = 70255,
		ElaneCrossbow = 70256,
		swamPlairArmor = 70257,
		clericalMace = 70263,
		barbarianAxe = 70264,
		crimsonSword = 70265,
		spellbookofMindControl = 70288,
		damagedExcalibur = 70289,
	},
	MisidiaQuest = {
		DeaplingJaulTimer = 70200,
		JaulTimer = 70201,
		JaulKilled = 70202,
	},
	ElficVille = {
		BlackMagicianTimer = 70203,
		BlackKnightKilled = 70204,
	},
	AnsharaPOI = {
		-- Izcandar
		IzcandarWinterKilled = 70205,
		IzcandarWinterTimer = 70206,
		-- Infernus
		InfernusKilled = 70207,
		InfernusTimer = 70208,
		ritualInfernus = 70209,
	},
	ArusBosses = {
		-- Fyzarus
		FyzarusKilled = 70210,
		FyzarusTimer = 70211,

		FerazusKilled = 70278,
		FezarusTimer = 70279,

		ToxirusKilled = 70280,
		ToxirusTimer = 70281,
	},
	Quest = {
		Key = {
			ID1219 = 70212, -- Annihilator II Key
			ID2088 = 70213, -- Pirate Ghost Key // Fynn Castle
			ID2089 = 70214, -- Pirate Bars Key // Fynn Settlement
			ID5001 = 70215, -- Falcon Bastion // Misidia Settlement
			ID5002 = 70216, -- amaged Steel Helmet // Ansara Desert
			ID2585 = 70217, -- Conjurer Outfit Quest Key 1
			ID2586 = 70218, -- Conjurer Outfit Quest Key 2
			ID2587 = 70219, -- Conjurer Outfit Quest Key 3
			ID2090 = 70220, -- Pirate Bars Key Boss // Misidia Settlement
		},
		goldenKeyFynn = 70221,
		goldenKeyMisidia = 70222,
		Javierkeys = 70275,
	},
	OutfitQuest = {
		DefaultStart = 70223,
		Ref = 70224,
		-- Citizen Addons Quest
		Citizen = {
			-- Mission storages for temporary questlog entries
			MissionHat = 70225,
			AddonHat = 70226,
			MissionBackpack = 70227,
			AddonBackpack = 70228,
			AddonBackpackTimer = 70229
		},
		-- Hunter Addons Quest
		HunterHatAddon = 70230,
		Hunter = {
			AddonGlove = 70231,
			AddonHat = 70232
		},
		-- Knight Addons Quest
		Knight = {
			AddonSword = 70233,
			MissionHelmet = 70234,
			AddonHelmet = 70235,
			AddonHelmetTimer = 70236,
			RamsaysHelmetDoor = 70237
		},
		-- Warrior-outfit Quest
		WarriorShoulderAddon = 70238,
		WarriorSwordAddon = 70239,
		WarriorShoulderTimer = 70240,
		-- Mage/Summoner-outfit Quest
		MageSummoner = {
			AddonWand = 70241,
			AddonBelt = 70242,
			MissionHatCloak = 70243,
			AddonHatCloak = 70244,
			AddonWandTimer = 70245
		},
		-- Conjurer Outfit
		ZarabustorKilled = 70246,
		ZarabustorTimmer = 70247,
		ZarabustorDone = 70248,
		ZarabustorReward = 70249,
		-- Pirate Outfit
		KrakenKilled = 70270,
		KrakenTimmer = 70271,
		KrakenDone = 70272,
		KrakenReward = 70273
	},
	firstReward = 70285,
	secondReward = 70286,
	thirdReward = 70287,
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
		end
	end
end
