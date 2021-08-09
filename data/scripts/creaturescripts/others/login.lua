local function onMovementRemoveProtection(cid, oldPos, time)
	local player = Player(cid)
	if not player then
		return true
	end

	local playerPos = player:getPosition()
	if (playerPos.x ~= oldPos.x or playerPos.y ~= oldPos.y or playerPos.z ~= oldPos.z) or player:getTarget() then
		player:setStorageValue(Storage.combatProtectionStorage, 0)
		return true
	end

	addEvent(onMovementRemoveProtection, 1000, cid, oldPos, time - 1)
end

local function protectionZoneCheck(playerName)
    doRemoveCreature(playerName)
    return true
end

local playerLogin = CreatureEvent("PlayerLogin")

function playerLogin.onLogin(player)
	if player:getLastLoginSaved() == 0 then
		player:sendOutfitWindow()
		db.query('UPDATE `players` SET `istutorial` = 0 where `id`='..player:getGuid())
	else
		player:sendTextMessage(MESSAGE_STATUS, "Welcome to " .. SERVER_NAME .. "!")
		player:sendTextMessage(MESSAGE_LOGIN, string.format("Your last visit in ".. SERVER_NAME ..": %s.", os.date("%d. %b %Y %X", player:getLastLoginSaved())))
	end

	if isPremium(player) then
		player:setStorageValue(Storage.PremiumAccount, 1)
	end

	local playerId = player:getId()
	DailyReward.init(playerId)

	player:loadSpecialStorage()

	if SCHEDULE_SPAWN_RATE ~= 100 then
		if SCHEDULE_SPAWN_RATE > 100 then
			player:sendTextMessage(MESSAGE_BOOSTED_CREATURE, "Spawn Rate Event! Monsters respawn at a faster rate \
			Happy Hunting!")
		else
			player:sendTextMessage(MESSAGE_BOOSTED_CREATURE, "Spawn Rate Decreased! Monsters respawn at a slower rate.")
		end
	end

	-- Boosted creature
	player:sendTextMessage(MESSAGE_BOOSTED_CREATURE, "Today's boosted creature: " .. Game.getBoostedCreature() .. " \
	Boosted creatures yield more experience points, carry more loot than usual and respawn at a faster rate.")

	-- Stamina
	nextUseStaminaTime[playerId] = 1

	-- EXP Stamina
	nextUseXpStamina[playerId] = 1

	-- Prey Small Window
	for slot = CONST_PREY_SLOT_FIRST, CONST_PREY_SLOT_THIRD do
		player:sendPreyData(slot)
	end

	-- New prey
	nextPreyTime[playerId] = {
		[CONST_PREY_SLOT_FIRST] = 1,
		[CONST_PREY_SLOT_SECOND] = 1,
		[CONST_PREY_SLOT_THIRD] = 1
	}

	-- Rewards
	local rewards = #player:getRewardList()
	if(rewards > 0) then
		player:sendTextMessage(MESSAGE_LOGIN, string.format("You have %d %s in your reward chest.",
		rewards, rewards > 1 and "rewards" or "reward"))
	end

	-- Update player id
	local stats = player:inBossFight()
	if stats then
		stats.playerId = player:getId()
	end

	if player:getStorageValue(Storage.combatProtectionStorage) < 1 then
		player:setStorageValue(Storage.combatProtectionStorage, 1)
		onMovementRemoveProtection(playerId, player:getPosition(), 10)
	end

	-- Set Client XP Gain Rate --
	local rateExp = 1
	if Game.getStorageValue(GlobalStorage.XpDisplayMode) > 0 then
		rateExp = getRateFromTable(experienceStages, player:getLevel(), configManager.getNumber(configKeys.RATE_EXP))

		if SCHEDULE_EXP_RATE ~= 100 then
			rateExp = math.max(0, (rateExp * SCHEDULE_EXP_RATE)/100)
		end
	end

	local staminaMinutes = player:getStamina()
	local staminaBonus = (staminaMinutes > 2340) and 150 or ((staminaMinutes < 840) and 50 or 100)
	player:setStaminaXpBoost(staminaBonus)
	player:setBaseXpGain(rateExp * 100)

	if player:getStorageValue(Storage.isTraining) == 1 then --Reset exercise weapon storage
		player:setStorageValue(Storage.isTraining,0)
	end
	return true
end
playerLogin:register()
