	-- Account manager
	accountManager = "no"
	namelockManager = "yes"
	newPlayerChooseVoc = "yes"
	newPlayerSpawnPosX = 941
	newPlayerSpawnPosY = 1001
	newPlayerSpawnPosZ = 7
	newPlayerTownId = 9
	newPlayerLevel = 10
	newPlayerMagicLevel = 0
	generateAccountNumber = "no"

	-- Banishments
	notationsToBan = 2
	warningsToFinalBan = 2
	warningsToDeletion = 3
	banLength = 3 * 24 * 60 * 60
	finalBanLength = 7 * 24 * 60 * 60
	ipBanishmentLength = 1 * 24 * 60 * 60
	broadcastBanishments = "no"
	killsToBan = 5
	maxViolationCommentSize = 300

	-- Battle
	-- NOTE: loginProtectionPeriod is the famous Tibia anti-magebomb system.
	-- deathLostPercent set to nil enables manual mode.
	worldType = "no-pvp"
	hotkeyAimbotEnabled = "yes"
	protectionLevel = 80
	pvpTileIgnoreLevelAndVocationProtection = "yes"
	killsToRedSkull = 3
	pzLocked = 60 * 1500
	criticalHitChance = 3
	displayCriticalHitNotify = "yes"
	removeWeaponAmmunition = "yes"
	removeWeaponCharges = "yes"
	removeRuneCharges = "yes"
	timeToDecreaseFrags = 24 * 60 * 60 * 1000
	whiteSkullTime = 20 * 60 * 1000
	noDamageToSameLookfeet = "no"
	experienceByKillingPlayers = "no"
	showHealingDamage = "yes"
	fieldOwnershipDuration = 5 * 1000
	stopAttackingAtExit = "yes"
	oldConditionAccuracy = "no"
	loginProtectionPeriod = 10 * 1000
	deathLostPercent = 10

	-- Connection config
	worldId = 0
	ip = "darkkonia.sytes.net"
	port = 7171
	loginTries = 1000
	retryTimeout = 5 * 1000
	loginTimeout = 60 * 1000
	maxPlayers = "30"
	motd = "Welcome to DarkKonia Server"
	displayOnOrOffAtCharlist = "no"
	onePlayerOnlinePerAccount = "yes"
	allowClones = 0
	serverName = "DarkKonia"
	loginMessage = "DarkKonia Server!"
	adminLogsEnabled = "no"
	statusTimeout = 1000
	replaceKickOnLogin = "yes"
	forceSlowConnectionsToDisconnect = "no"
	loginOnlyWithLoginServer = "no"

	-- Database
	-- NOTE: sqlFile is used only by sqlite database, and sqlKeepAlive by mysql database.
	-- To disable sqlKeepAlive use 0 value.
	sqlType = "mysql"
	sqlHost = "localhost"
	sqlPort = 3306
	sqlUser = ""
	sqlPass = ""
	sqlDatabase = ""
	sqlFile = "forgottenserver.s3db"
	sqlKeepAlive = 0
	mysqlReadTimeout = 10
	optimizeDatabaseAtStartup = "yes"
	passwordType = "plain"

	-- Deathlist
	deathListEnabled = "yes"
	maxDeathRecords = 8

	-- Guilds
	ingameGuildManagement = "yes"
	levelToFormGuild = 50
	guildNameMinLength = 4
	guildNameMaxLength = 20

	-- Highscores
	highscoreDisplayPlayers = 15
	updateHighscoresAfterMinutes = 60

	-- Houses
	buyableAndSellableHouses = "yes"
	housesPerAccount = 1
	levelToBuyHouse = 80
	houseRentAsPrice = "no"
	housePriceAsRent = "no"
	housePriceEachSQM = 1000
	houseRentPeriod = "weekly"

	-- Item usage
	timeBetweenActions = 400
	timeBetweenExActions = 1200

	-- Map
	-- NOTE: storeTrash costs more memory, but will perform alot faster cleaning.
	-- useHouseDataStorage usage may be found at README.
	mapName = "AkWord"
	mapAuthor = "Yeik"
	randomizeTiles = "yes"
	useHouseDataStorage = "yes"
	storeTrash = "yes"
	cleanProtectedZones = "yes"

	-- Miscellaneous
	-- NOTE: defaultPriority works only on Windows
	defaultPriority = "high"
	maxMessageBuffer = 4
	kickIdlePlayerAfterMinutes = 15
	allowChangeOutfit = "yes"
	allowChangeColors = "yes"
	disableOutfitsForPrivilegedPlayers = "no"
	displayGamemastersWithOnlineCommand = "no"
	bankSystem = "yes"
	saveGlobalStorage = "no"
	displaySkillLevelOnAdvance = "yes"
	spellNameInsteadOfWords = "no"
	emoteSpells = "yes"
	expireReportsAfterReads = 1
	promptExceptionTracerErrorBox = "yes"
	storePlayerDirection = "no"
	playerQueryDeepness = 1

	-- Premium account
	freePremium = "no"
	removePremiumOnInit = "yes"
	premiumForPromotion = "yes"
	blessingsOnlyPremium = "yes"
	houseNeedPremium = "yes"
	bedsRequirePremium = "yes"

	-- Rates
	-- NOTE: experienceStages configuration is located in data/XML/stages.xml.
	rateExperience = 5.0
	rateSkill = 95.0
	rateLoot = 2.0
	rateMagic = 3.0
	rateStaminaHits = 3
	rateSpawn = 1
	experienceStages = "yes"

	-- Party
	-- NOTE experienceShareLevelDifference is float number.
	-- experienceShareLevelDifference is highestLevel * value
	experienceShareRadiusX = 10
	experienceShareRadiusY = 10
	experienceShareRadiusZ = 1
	experienceShareLevelDifference = 1 / 20
	extraPartyExperienceLimit = 4
	extraPartyExperiencePercent = 55

	-- Global save
	-- NOTE: globalSaveHour means like 15:00, not that it will save every 15 hours,
	-- if you want such a system please check out data/globalevents/globalevents.xml.
	globalSaveEnabled = "yes"
	globalSaveHour = 15
	shutdownAtGlobalSave = "yes"
	cleanMapAtGlobalSave = "no"

	-- Spawns
	deSpawnRange = 2
	deSpawnRadius = 50

	-- Summons
	maxPlayerSummons = 2
	teleportAllSummons = "no"
	teleportPlayerSummons = "yes"

	-- Status
	ownerName = "MartyX"
	ownerEmail = "darkylive@live.com.mx"
	url = "http://darkkonia.sytes.net/"
	location = "Mexican"

	-- Logs
	-- NOTE: This kind of logging does not work in GUI version.
	-- For such, please compile the software with __GUI_LOGS__ flag.
	runeFile = ""
	outLogName = ""
	errorLogName = ""
	truncateLogsOnStartup = "no"
