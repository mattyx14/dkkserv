if not Quests then
	Quests = {
		[1] = {
			name = "Forgotten Knowledge",
			startStorageId = DarkKonia.ForgottenKnowledge.Tomes,
			startStorageValue = 1,
			missions = {
				[1] = {
					name = "The temple of glory",
					storageId = DarkKonia.ForgottenKnowledge.Tomes,
					missionId = 10360,
					startValue = 0,
					endValue = 1,
					states = {
						[1] = "You have contributed with the collection of tomes."
					}
				},
				[2] = {
					name = "Circle of the Black Sphinx",
					storageId = DarkKonia.ForgottenKnowledge.LadyTenebrisKilled,
					missionId = 10361,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "You need defeated the rogue Lady Tenebris.",
						[1] = "You defeated the rogue Lady Tenebris."
					}
				},
				[3] = {
					name = "Bane of the deep",
					storageId = DarkKonia.MisidiaQuest.JaulKilled,
					missionId = 10362,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "You need defeated the terrifying Jaul.",
						[1] = "You defeated the terrifying Jaul."
					}
				},
			}
		},
		[2] = {
			name = "Pirate treasure hunt",
			startStorageId = DarkKonia.Quest.Javierkeys,
			startStorageValue = 1,
			missions = {
				[1] = {
					name = "Javier's lost key",
					storageId = DarkKonia.Quest.Key.ID2088,
					missionId = 10363,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "Find Javier's lost key.",
						[1] = "You have found Javier key."
					}
				},
				[2] = {
					name = "The hidden key of the pirate ghost",
					storageId = DarkKonia.Quest.Key.ID2089,
					missionId = 10364,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "The key is lost in the pirate fortress of Fynn Castle.",
						[1] = "You have found the key of the pirate ghost."
					}
				},
				[3] = {
					name = "The prisoner's key",
					storageId = DarkKonia.Quest.Key.ID2090,
					missionId = 10365,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "It will be required to access the island of the treasure.",
						[1] = "You have found the prisoner's key."
					}
				},
				[4] = {
					name = "Terror of the seas",
					storageId = DarkKonia.OutfitQuest.KrakenKilled,
					missionId = 10366,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "You need defeated the terror of the seas The Kraken.",
						[1] = "You defeated the terror of the seas The Kraken."
					}
				},
			}
		},
		[3] = {
			name = "First mission from Fynn Castle",
			startStorageId = DarkKonia.FirstQuest.Fynn,
			startStorageValue = 1,
			missions = {
				[1] = {
					name = "The mysterious key of Misidia Settlemente",
					storageId = DarkKonia.FirstQuest.Fynn,
					missionId = 10367,
					startValue = 0,
					endValue = 1,
					description = "You have found a mysterious treasure. Must find the treasure of the castle."
				},
				[2] = {
					name = "The treasure of the castle",
					storageId = DarkKonia.FirstQuest.rewardFynn,
					missionId = 10368,
					startValue = 0,
					endValue = 1,
					states = {
						[1] = "With the key #30221 you will have access through the ship to travel to Misidia Settlement."
					}
				},
			}
		},
		[4] = {
			name = "First mission from Misidia Settlement",
			startStorageId = DarkKonia.FirstQuest.Misidia,
			startStorageValue = 1,
			missions = {
				[1] = {
					name = "The mysterious key of Fynn Castle",
					storageId = DarkKonia.FirstQuest.Misidia,
					missionId = 10369,
					startValue = 0,
					endValue = 1,
					description = "You have found a mysterious treasure. Must find the treasure of the tower."
				},
				[2] = {
					name = "The treasure of the tower",
					storageId = DarkKonia.FirstQuest.rewardMisidia,
					missionId = 10370,
					startValue = 0,
					endValue = 1,
					states = {
						[1] = "With the key #30222 you will have access through the ship to travel to Fynn Castle."
					}
				},
			}
		},
		[5] = {
			name = "First Sacrifice Quest",
			startStorageId = DarkKonia.FirstSacrifice.firstTip,
			startStorageValue = 1,
			missions = {
				[1] = {
					name = "First Sacrifice the Wyvern Fang",
					storageId = DarkKonia.FirstSacrifice.wyvernFang,
					missionId = 10371,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "You must sacrifice priceless wyvern fang. At one of the sacred altars.",
						[1] = "With your sacrifice you have obtained an invaluable amber staff that will be required in another mission."
					}
				},
				[2] = {
					name = "First Sacrifice the Knight Axe",
					storageId = DarkKonia.FirstSacrifice.knightAxe,
					missionId = 10372,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "You must sacrifice priceless knight axe. At one of the sacred altars.",
						[1] = "With your sacrifice you have obtained an invaluable mystic blade that will be required in another mission."
					}
				},
				[3] = {
					name = "First Sacrifice the Dragon Hammer",
					storageId = DarkKonia.FirstSacrifice.dragonHammer,
					missionId = 10373,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "You must sacrifice priceless dragon hammer. At one of the sacred altars.",
						[1] = "With your sacrifice you have obtained an invaluable heroic axe that will be required in another mission."
					}
				},
			}
		},
		[6] = {
			name = "Second Sacrifice Quest",
			startStorageId = DarkKonia.SecondSacrifice.secondTip,
			startStorageValue = 1,
			missions = {
				[1] = {
					name = "Second Sacrifice the Mystic Blade",
					storageId = DarkKonia.SecondSacrifice.mysticBlade,
					missionId = 10374,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "You must sacrifice priceless mystic blade. At one of the sacred altars.",
						[1] = "With your sacrifice you have obtained an invaluable skull staff that will be required in another mission."
					}
				},
				[2] = {
					name = "Second Sacrifice the Heroic Axe",
					storageId = DarkKonia.SecondSacrifice.heroicAxe,
					missionId = 10375,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "You must sacrifice priceless heroic axe. At one of the sacred altars.",
						[1] = "With your sacrifice you have obtained an invaluable bright sword that will be required in another mission."
					}
				},
				[3] = {
					name = "Second Sacrifice the Amber Staff",
					storageId = DarkKonia.SecondSacrifice.amberStaff,
					missionId = 10376,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "You must sacrifice priceless amber staff. At one of the sacred altars.",
						[1] = "With your sacrifice you have obtained an invaluable fire axe that will be required in another mission."
					}
				},
			}
		},
		[7] = {
			name = "Third Sacrifice Quest",
			startStorageId = DarkKonia.ThirdSacrifice.thirdTip,
			startStorageValue = 1,
			missions = {
				[1] = {
					name = "Third Sacrifice the Bright Sword",
					storageId = DarkKonia.ThirdSacrifice.brightSword,
					missionId = 10377,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "You must find bright sword that is guarded by powerful dragons.",
						[1] = "By carrying this weapon you can fight with Fyzarus the guardian of weapons of destruction."
					}
				},
				[2] = {
					name = "Third Sacrifice the Fire Axe",
					storageId = DarkKonia.ThirdSacrifice.fireAxe,
					missionId = 10378,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "You should find fire axe which is guarded by powerful demons.",
						[1] = "By carrying this weapon you can fight with Toxirus the guardian of weapons of destruction."
					}
				},
				[3] = {
					name = "Third Sacrifice the Skull Staff",
					storageId = DarkKonia.ThirdSacrifice.skullStaff,
					missionId = 10379,
					startValue = 0,
					endValue = 1,
					states = {
						[0] = "You should find fire ax which is guarded by powerful wizards.",
						[1] = "By carrying this weapon you can fight with Fezarus the guardian of weapons of destruction."
					}
				},
			}
		},
	}
end

if not LastQuestlogUpdate then
	LastQuestlogUpdate = {}
end

if not PlayerTrackedMissionsData then
	PlayerTrackedMissionsData = {}
end

-- Text functions

function evaluateText(value, player)
	if type(value) == "function" then
		return tostring(value(player))
	end

	return tostring(value)
end

-- Game functions

function Player.hasTrackingQuest(self, missionId)
	local trackedQuests = PlayerTrackedMissionsData[self:getId()]
	if trackedQuests then
		for i = 1, #trackedQuests do
			local mission = trackedQuests[i]
			if mission and mission.missionId == missionId then
				return true
			end
		end
	end
	return false
end

function Player.getQuestDataByMissionId(self, missionId)
	for questId = 1, #Quests do
		local quest = Game.getQuest(questId)
		if quest then
			if quest.missions then
				for i = 1, #quest.missions do
					local mission = quest.missions[i]
					if mission and mission.missionId == missionId then
						return quest.name, questId, i
					end
				end
			end
		end
	end
	return false
end

function Player.resetTrackedMissions(self, missions)
	local maxAllowed = self:getAllowedTrackedQuestCount()
	PlayerTrackedMissionsData[self:getId()] = {}
	for i = 1, #missions do
		local missionId = missions[i]
		local questName, questId, missionIndex = self:getQuestDataByMissionId(missionId)
		if questName and questId and missionIndex then
			if self:missionIsStarted(questId, missionIndex) then
				local data = {
					missionId = missionId,
					questName = questName,
					missionName = self:getMissionName(questId, missionIndex),
					missionDesc = self:getMissionDescription(questId, missionIndex)
				}
				table.insert(PlayerTrackedMissionsData[self:getId()], data)
				if #PlayerTrackedMissionsData[self:getId()] >= maxAllowed then
					break
				end
			end
		end
	end

	self:sendTrackedQuests(maxAllowed - #PlayerTrackedMissionsData[self:getId()], PlayerTrackedMissionsData[self:getId()])
end

function Player.getAllowedTrackedQuestCount(self)
	return self:isPremium() and 25 or 10
end

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

function Player.getMissionsData(self, storage)
	local missions = {}
	for questId = 1, #Quests do
		local quest = Game.getQuest(questId)
		if quest and quest.missions then
			for missionId = 1, #quest.missions do
				local started = self:missionIsStarted(questId, missionId)
				if started then
					local mission = quest.missions[missionId]
					if mission.storageId == storage then
						local data = {
							missionId = mission.missionId,
							missionName = self:getMissionName(questId, missionId),
							missionDesc = self:getMissionDescription(questId, missionId)
						}
						missions[#missions + 1] = data
					end
				end
			end
		end
	end
	return missions
end

function Game.isQuestStorage(key, value, oldValue)
	for questId = 1, #Quests do
		local quest = Game.getQuest(questId)
		if quest then
			if quest.startStorageId == key and quest.startStorageValue == value then
				return true
			end

			if quest.missions then
				for missionId = 1, #quest.missions do
					local mission = Game.getMission(questId, missionId)
					if mission then
						if mission.storageId == key and value >= mission.startValue and value <= mission.endValue then
							return mission.description or oldValue < mission.storageId or oldValue > mission.endValue
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
	if quest and self:getStorageValue(quest.startStorageId) ~= -1 or self:getStorageValue(quest.startStorageId) >= quest.startStorageValue then
		return true
	end
	return false
end

function Player.missionIsStarted(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		local value = self:getStorageValue(mission.storageId)
		if value == -1 or value < mission.startValue or (not mission.ignoreendvalue and value > mission.endValue) then
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
		local value = self:getStorageValue(mission.storageId)
		if value == -1 then
			return false
		end

		if mission.ignoreendvalue then
			return value >= mission.endValue
		end

		return value == mission.endValue
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

function Player.getMissionId(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		return mission.missionId
	end
	return 0
end

function Player.getMissionDescription(self, questId, missionId)
	local mission = Game.getMission(questId, missionId)
	if mission then
		if mission.description then
			return evaluateText(mission.description, self)
		end

		local value = self:getStorageValue(mission.storageId)
		local state = value
		if mission.ignoreendvalue and value > table.maxn(mission.states) then
			state = table.maxn(mission.states)
		end
		return evaluateText(mission.states[state], self)
	end
	return "An error has occurred, please contact a gamemaster."
end

function Player.sendQuestLog(self)
	local msg = NetworkMessage()
	msg:addByte(0xF0)
	msg:addU16(Game.getQuestsCount(self))
	for questId = 1, #Quests do
		if self:questIsStarted(questId) then
			msg:addU16(questId)
			msg:addString(Quests[questId].name .. (self:questIsCompleted(questId) and " (completed)" or ""))
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
					msg:addU16(self:getMissionId(questId, missionId))
					msg:addString(self:getMissionName(questId, missionId))
					msg:addString(self:getMissionDescription(questId, missionId))
				end
			end
		end

		msg:sendToPlayer(self)
		msg:delete()
	end
end

function Player.sendTrackedQuests(self, remainingQuests, missions)
	local msg = NetworkMessage()
	msg:addByte(0xD0)
	msg:addByte(0x01)
	msg:addByte(remainingQuests)
	msg:addByte(#missions)
	for _, mission in ipairs(missions) do
		msg:addU16(mission.missionId)
		msg:addString(mission.questName)
		msg:addString(mission.missionName)
		msg:addString(mission.missionDesc)
	end
	msg:sendToPlayer(self)
	msg:delete()
end

function Player.sendUpdateTrackedQuest(self, mission)
	local msg = NetworkMessage()
	msg:addByte(0xD0)
	msg:addByte(0x00)
	msg:addU16(mission.missionId)
	msg:addString(mission.missionName)
	msg:addString(mission.missionDesc)
	msg:sendToPlayer(self)
	msg:delete()
end

function Player.updateStorage(self, key, value, oldValue, currentFrameTime)
	local playerId = self:getId()
	if LastQuestlogUpdate[playerId] ~= currentFrameTime and Game.isQuestStorage(key, value, oldValue) then
		LastQuestlogUpdate[playerId] = currentFrameTime
		self:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your questlog has been updated.")
	end
	local missions = self:getMissionsData(key)
	for i = 1, #missions do
		local mission = missions[i]
		if self:hasTrackingQuest(mission.missionId) then
			self:sendUpdateTrackedQuest(mission)
		end
	end
end

local function sendPrint(questId, index)
	Spdlog.warn(string.format("[sendPrint] - Quest id:[%d] mission:[%d]",
		questId, index))
end

for questId = 1, #Quests do
	local quest = Game.getQuest(questId)
	if quest then
		for index, value in ipairs(quest.missions) do
			if index then
				if not value.name then
					Spdlog.warn("Quest.load: Wrong mission name found")
					sendPrint(questId, index)
				end
				if not value.storageId then
					Spdlog.warn("Quest.load: Wrong mission storage found")
					sendPrint(questId, index)
				end
				if not value.missionId then
					Spdlog.warn("Quest.load: Wrong mission id found")
					sendPrint(questId, index)
				end
				if not value.startValue then
					Spdlog.warn("Quest.load: Wrong mission start value found")
					sendPrint(questId, index)
				end
				if not value.endValue then
					Spdlog.warn("Quest.load: Wrong mission end value found")
					sendPrint(questId, index)
				end
			end
		end
	end
end
