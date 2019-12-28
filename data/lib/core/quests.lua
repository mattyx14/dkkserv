if not Quests then
	Quests = {
		--[[
		[1] = {
			name = "The Explorer Society", startstorageid = Storage.ExplorerSociety.QuestLine, startstoragevalue = 1,
			missions = {
				[1] = {
					name = "Joining the Explorers", storageid = Storage.ExplorerSociety.QuestLine, startvalue = 1, endvalue = 4,
					states = {
						[1] = "The mission should be simple to fulfil. You have to seek out Uzgod in Kazordoon and get the pickaxe for us. Or just find dwarven pickaxe on your own...",
						[2] = "Get into Dwacatra and bring family brooch back to Uzgod.",
						[3] = "Bring the pickaxe back to the Explorer Society representative.",
					},

				}
			}
		}
		]]
	}
end

if not LastQuestlogUpdate then
	LastQuestlogUpdate = {}
end

-- Text functions
function evaluateText(value, player)
	if type(value) == "function" then
		return tostring(value(player))
	end

	return tostring(value)
end

-- Game functions
function Game.isValidQuest(questId)
	return (Quests and Quests[questId])
end

function Game.isValidMission(questId, missionId)
	return (Game.isValidQuest(questId) and Quests[questId].missions and Quests[questId].missions[missionId])
end

function Game.getQuest(questId)
	if Game.isValidQuest(questId) then
		return Quests[questId]
	end
	return false
end

function Game.getQuestIdByName(name)
	for questId = 1, #Quests do
		local quest = Game.getQuest(questId)
		if quest and quest.name:lower() == name:lower() then
			return questId
		end
	end
	return false
end

function Game.getMission(questId, missionId)
	if Game.isValidMission(questId, missionId) then
		return Quests[questId].missions[missionId]
	end
	return false
end

function Game.isQuestStorage(key, value, oldValue)
	for questId = 1, #Quests do
		local quest = Game.getQuest(questId)
		if quest then
			if quest.startstorageid == key and quest.startstoragevalue == value then
				return true
			end

			if quest.missions then
				for missionId = 1, #quest.missions do
					local mission = Game.getMission(questId, missionId)
					if mission then
						if mission.storageid == key and value >= mission.startvalue and value <= mission.endvalue then
							return mission.description or oldValue < mission.storageid or oldValue > mission.endvalue;
						end
					end
				end
			end
		end
	end
	return false
end

function Game.getQuestsCount(player)
	local count = 0
	if Quests then
		for id = 1, #Quests do
			if player:questIsStarted(id) then
				count = count + 1
			end
		end
	end
	return count
end

function Game.getMissionsCount(player, questId)
	local quest = Game.getQuest(questId)
	local count = 0
	if quest then
		local missions = quest.missions
		if missions then
			for missionId = 1, #missions do
				if player:missionIsStarted(questId, missionId) then
					count = count + 1
				end
			end
		end
	end
	return count
end

function Game.addQuest(quest)
	local findQuest = Game.getQuestIdByName(quest.name)
	if findQuest then
		Quests[findQuest] = quest
		return findQuest
	end

	local questId = #Quests + 1
	Quests[questId] = quest
	return questId
end

-- Player functions

function Player.questIsStarted(self, questId)
	local quest = Game.getQuest(questId)
	if quest and self:getStorageValue(quest.startstorageid) ~= -1 or self:getStorageValue(quest.startstorageid) >= quest.startstoragevalue then
		return true
	end
	return false
end

function Player.missionIsStarted(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		local value = self:getStorageValue(mission.storageid)
		if value == -1 or value < mission.startvalue or (not mission.ignoreendvalue and value > mission.endvalue) then
			return false
		end

		return true
	end
	return false
end

function Player.questIsCompleted(self, questId)
	local quest = Game.getQuest(questId)
	if quest then
		local missions = quest.missions
		if missions then
			-- if(self:missionIsCompleted(questId, #missions))then
				-- return true
			-- end
			for missionId = 1, #missions do
				if not self:missionIsCompleted(questId, missionId) then
					return false
				end
			end
		end
		return true
	end
	return false
end

function Player.missionIsCompleted(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		local value = self:getStorageValue(mission.storageid)
		if value == -1 then
			return false
		end

		if mission.ignoreendvalue then
			return value >= mission.endvalue
		end

		return value == mission.endvalue
	end
	return false
end

function Player.getMissionName(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		if self:missionIsCompleted(questId, missionId) then
			return mission.name .. " (completed)"
		end
		return mission.name
	end
	return ""
end

function Player.getMissionDescription(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		if mission.description then
			return evaluateText(mission.description, self)
		end

		local value = self:getStorageValue(mission.storageid)
		local state = value
		if mission.ignoreendvalue and value > table.maxn(mission.states) then
			state = table.maxn(mission.states)
		end
		return evaluateText(mission.states[state], self)
	end
	return "An error has occurred, please contact a gamemaster."
end

function Player.sendQuestTracker(self)
	local msg = NetworkMessage()
	msg:addByte(0xD0) -- byte quest tracker
	msg:addByte(1) -- send quests of quest log ??
	msg:addU16(1) -- unknown
	msg:sendToPlayer(self)
	msg:delete()
end


function Player.sendQuestLog(self)
	local msg = NetworkMessage()
	msg:addByte(0xF0)
	msg:addU16(Game.getQuestsCount(self))
	for questId = 1, #Quests do
		if self:questIsStarted(questId) then
			msg:addU16(questId)
			msg:addString(Quests[questId].name .. ""..(self:questIsCompleted(questId) and " (completed)" or ""))
			msg:addByte(self:questIsCompleted(questId))
		end
	end
	msg:sendToPlayer(self)
	msg:delete()
end

function Player.sendQuestLine(self, questId)
	local quest = Game.getQuest(questId)
	if quest then
		local missions = quest.missions
		local msg = NetworkMessage()
		msg:addByte(0xF1)
		msg:addU16(questId)
		msg:addByte(Game.getMissionsCount(self, questId))
		if missions then
			for missionId = 1, #missions do
				if self:missionIsStarted(questId, missionId) then
					if (self:getClient().version >= 1120)then
						msg:addU16(questId)
					end
					msg:addString(self:getMissionName(questId, missionId))
					msg:addString(self:getMissionDescription(questId, missionId))
				end
			end
		end
		if (self:getClient().os == CLIENTOS_NEW_WINDOWS) then
			self:sendQuestTracker()
		end

		msg:sendToPlayer(self)
		msg:delete()
	end
end

function Player.updateStorage(self, key, value, oldValue, currentFrameTime)
	local guid = self:getGuid()
	if LastQuestlogUpdate[guid] ~= currentFrameTime and Game.isQuestStorage(key, value, oldValue) then
		LastQuestlogUpdate[guid] = currentFrameTime
		self:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your questlog has been updated.")
	end
end
