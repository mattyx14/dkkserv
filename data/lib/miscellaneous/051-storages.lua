-- STORAGES --
-- (HIGHLY RECOMMENDED -> ONE mission per STORAGE) --
-- Sort it in Values -

Storage = {
	Exercisedummy = {
		exaust = 98231521
	},
	ForgottenKnowledge = {
		GirlPicture = 10140, -- Fynn = 26400
		SilverKey = 10141, -- Fynn
		LadyTenebrisTimer = 10151, -- Fynn
		LadyTenebrisKilled = 10150, -- Fynn

		-- Internal Usage
		LloydKilled = 10152,
		ThornKnightKilled = 10154,
		DragonkingKilled = 10156,
		HorrorKilled = 10158,
		TimeGuardianKilled = 10160,
		LastLoreKilled = 10162,
	},
	AnnihilatorDone = 2215,
	Promotion = 30018, -- Promotion Storage cannot be changed, it is set in source code
	KawillBlessing = 50139,
	RentedHorseTimer = 50561,
	combatProtectionStorage = 50722,
	Factions = 50723,
	blockMovementStorage = 100000,
	PetSummon = 60045,
	isTraining = 37,

	-- DarkKonia Storages
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

		draculaDone = 10008,
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
	POIQuest = {
		anniQuestSovDone = 2400,
		anniQuestThaDone = 2421,
		anniQuestScaDone = 2431,
		POIMission = {
			Done = 24075
		}
	},
	AdventurersGuild = {
		Stone = 50702,
	},
	FirstQuest = {
		Fynn = 12519,
			rewardFynn = 2527,
		Misidia = 12520,
			rewardMisidia = 2528,
	},
	FirstSacrifice = {
		knightAxe = 2430,
		heroicAxe = 7389,
		fireAxe = 2432,
		-- royalAxe = royalAxeDone,
		wyvernFang = 7408,
		misticBlade = 7384,
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
		suddenDeathWarlockFynn = 2222,
		frozenStarLightFynn = 2361,
		legionHelmet = 2480,
		eagleShield = 2538,
		nobleArmor = 2486,
		dragonScaleMail = 2492,
		ceremonialMask = 2501,
		guardianShield = 2515,
		bonelordShield = 2518,
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
		-- deathHeraldOutfit = draculaDone,
		-- assassinOutfit = assassinDone,
		puppeteerOutfit = 1449,
		magmaSet = 30492,
		lightningSete = 30493,
		insectoidOutfit = 14699,
	},
	-- Global Tibia Quest
	OutfitQuest = {
		DefaultStart = 12010, -- until all outfit quests are completed
		Ref = 12010,

		-- Citizen Addons
		Citizen = {
			-- Mission storages for temporary questlog entries
			MissionHat = 12009,
			AddonHat = 12011,

			MissionBackpack = 12008,
			AddonBackpack = 12012,
			AddonBackpackTimer = 12017
		},
		-- Hunter Addons
		HunterHatAddon = 12055,
		Hunter = {
			AddonGlove = 12054,
			AddonHat = 12055
		},
		-- Knight Addons
		Knight = {
			AddonSword = 12153,
			MissionHelmet = 12154,
			AddonHelmet = 12155,
			AddonHelmetTimer = 12156,
			RamsaysHelmetDoor = 12160
		},
	},
	ForgottenKnowledgeRewards = {
		yalahariSet = 9776,
	},
}

GlobalStorage = {
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
	ExpBoost = 51052,
	XpDisplayMode = 5634
}
