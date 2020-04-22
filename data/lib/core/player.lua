-- Functions from The Forgotten Server
local foodCondition = Condition(CONDITION_REGENERATION, CONDITIONID_DEFAULT)

function Player.feed(self, food)
	local condition = self:getCondition(CONDITION_REGENERATION, CONDITIONID_DEFAULT)
	if condition then
		condition:setTicks(condition:getTicks() + (food * 1000))
	else
		local vocation = self:getVocation()
		if not vocation then
			return nil
		end

		foodCondition:setTicks(food * 1000)
		foodCondition:setParameter(CONDITION_PARAM_HEALTHGAIN, vocation:getHealthGainAmount())
		foodCondition:setParameter(CONDITION_PARAM_HEALTHTICKS, vocation:getHealthGainTicks() * 1000)
		foodCondition:setParameter(CONDITION_PARAM_MANAGAIN, vocation:getManaGainAmount())
		foodCondition:setParameter(CONDITION_PARAM_MANATICKS, vocation:getManaGainTicks() * 1000)

		self:addCondition(foodCondition)
	end
	return true
end

function Player.getClosestFreePosition(self, position, extended)
	if self:getGroup():getAccess() and self:getAccountType() >= ACCOUNT_TYPE_GOD then
		return position
	end
	return Creature.getClosestFreePosition(self, position, extended)
end

function Player.getDepotItems(self, depotId)
	return self:getDepotChest(depotId, true):getItemHoldingCount()
end

function Player.hasFlag(self, flag)
	return self:getGroup():hasFlag(flag)
end

function Player.isPremium(self)
	return self:getPremiumDays() > 0 or configManager.getBoolean(configKeys.FREE_PREMIUM)
end

function Player.isPromoted(self)
    local vocation = self:getVocation()
    local promotedVocation = vocation:getPromotion()
    promotedVocation = promotedVocation and promotedVocation:getId() or 0

    return promotedVocation == 0 and vocation:getId() ~= promotedVocation
end

function Player.sendCancelMessage(self, message)
	if type(message) == "number" then
		message = Game.getReturnMessage(message)
	end
	return self:sendTextMessage(MESSAGE_STATUS_SMALL, message)
end

function Player.isUsingOtClient(self)
	return self:getClient().os >= CLIENTOS_OTCLIENT_LINUX
end

function Player.sendExtendedOpcode(self, opcode, buffer)
	if not self:isUsingOtClient() then
		return false
	end

	local networkMessage = NetworkMessage()
	networkMessage:addByte(0x32)
	networkMessage:addByte(opcode)
	networkMessage:addString(buffer)
	networkMessage:sendToPlayer(self)
	networkMessage:delete()
	return true
end

APPLY_SKILL_MULTIPLIER = true
local addSkillTriesFunc = Player.addSkillTries
function Player.addSkillTries(...)
	APPLY_SKILL_MULTIPLIER = false
	local ret = addSkillTriesFunc(...)
	APPLY_SKILL_MULTIPLIER = true
	return ret
end

local addManaSpentFunc = Player.addManaSpent
function Player.addManaSpent(...)
	APPLY_SKILL_MULTIPLIER = false
	local ret = addManaSpentFunc(...)
	APPLY_SKILL_MULTIPLIER = true
	return ret
end

-- Functions From OTServBR-Global
function Player.allowMovement(self, allow)
	return self:setStorageValue(STORAGE.blockMovementStorage, allow and -1 or 1)
end

function Player.addFamePoint(self)
    local points = self:getStorageValue(SPIKE_FAME_POINTS)
    local current = math.max(0, points)
    self:setStorageValue(SPIKE_FAME_POINTS, current + 1)
    self:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have received a fame point.")
end

function Player.getFamePoints(self)
    local points = self:getStorageValue(SPIKE_FAME_POINTS)
    return math.max(0, points)
end

function Player.removeFamePoints(self, amount)
    local points = self:getStorageValue(SPIKE_FAME_POINTS)
    local current = math.max(0, points)
    self:setStorageValue(SPIKE_FAME_POINTS, current - amount)
end

function Player.depositMoney(self, amount)
	if not self:removeMoney(amount) then
		return false
	end

	self:setBankBalance(self:getBankBalance() + amount)
	return true
end

function Player.transferMoneyTo(self, target, amount)
	local balance = self:getBankBalance()
	if amount > balance then
		return false
	end

	local targetPlayer = Player(target)
	if targetPlayer then
		targetPlayer:setBankBalance(targetPlayer:getBankBalance() + amount)
	else
		if not playerExists(target) then
			return false
		end
		db.query("UPDATE `players` SET `balance` = `balance` + '" .. amount .. "' WHERE `name` = " .. db.escapeString(target))
	end

	self:setBankBalance(self:getBankBalance() - amount)
	return true
end

function Player.withdrawMoney(self, amount)
	local balance = self:getBankBalance()
	if amount > balance or not self:addMoney(amount) then
		return false
	end

	self:setBankBalance(balance - amount)
	return true
end

function Player.hasAllowMovement(self)
	return self:getStorageValue(STORAGE.blockMovementStorage) ~= 1
end

function Player.isDruid(self)
	return isInArray({2, 6}, self:getVocation():getId())
end

function Player.isKnight(self)
	return isInArray({4, 8}, self:getVocation():getId())
end

function Player.isPaladin(self)
	return isInArray({3, 7}, self:getVocation():getId())
end

function Player.isMage(self)
	return isInArray({1, 2, 5, 6}, self:getVocation():getId())
end

function Player.isSorcerer(self)
	return isInArray({1, 5}, self:getVocation():getId())
end

-- Impact Analyser
function Player.sendHealingImpact(self, healAmmount)
	local msg = NetworkMessage()
	msg:addByte(0xCC) -- DEC: 204
	msg:addByte(0) -- 0 = healing / 1 = damage (boolean)
	msg:addU32(healAmmount) -- unsigned int
	msg:sendToPlayer(self)
end

function Player.sendDamageImpact(self, damage)
	local msg = NetworkMessage()
	msg:addByte(0xCC) -- DEC: 204
	msg:addByte(1) -- 0 = healing / 1 = damage (boolean)
	msg:addU32(damage) -- unsigned int
	msg:sendToPlayer(self)
end

-- Loot Analyser
function Player.sendLootStats(self, item)
    local msg = NetworkMessage()
    msg:addByte(0xCF) -- loot analyser bit
    msg:addItem(item, self) -- item userdata
    msg:addString(getItemName(item:getId()))
    msg:sendToPlayer(self)
end

-- Supply Analyser
function Player.sendWaste(self, item)
    local msg = NetworkMessage()
    msg:addByte(0xCE) -- waste bit
    msg:addItemId(item) -- itemId
    msg:sendToPlayer(self)
end
