function Monster:onDropLoot(corpse)
	if configManager.getNumber(configKeys.RATE_LOOT) == 0 then
		return
	end

	-- Register reward function from reward boss lib
	self:registerRewardBoss(corpse)

	local player = Player(corpse:getCorpseOwner())
	local mType = self:getType()
	if not player or player:getStamina() > 840 then
		local monsterLoot = mType:getLoot()
		for i = 1, #monsterLoot do
			local boolCharm = false
			if player then
				local charmType = player:getCharmMonsterType(CHARM_GUT)
				if charmType and charmType:raceId() == mType:raceId() then
					boolCharm = true
				end
			end
		
			local item = corpse:createLootItem(monsterLoot[i], boolCharm)
			if self:getName():lower() == (Game.getBoostedCreature()):lower() then
				local itemBoosted = corpse:createLootItem(monsterLoot[i], boolCharm)
			end
			if not item then
				Spdlog.warn(string.format("[Monster:onDropLoot] - Could not add loot item to monster: %s, from corpse id: %d.", self:getName(), corpse:getId()))
			end
		end

		if player then
			local text = {}
			if self:getName():lower() == (Game.getBoostedCreature()):lower() then
				 text = ("Loot of %s: %s (boosted loot)"):format(mType:getNameDescription(), corpse:getContentDescription())
			else
				 text = ("Loot of %s: %s"):format(mType:getNameDescription(), corpse:getContentDescription())			
			end
			local party = player:getParty()
			if party then
				party:broadcastPartyLoot(text)
			else
				player:sendTextMessage(MESSAGE_LOOT, text)
			end
			player:updateKillTracker(self, corpse)
		end
	else
		local text = ("Loot of %s: nothing (due to low stamina)"):format(mType:getNameDescription())
		local party = player:getParty()
		if party then
			party:broadcastPartyLoot(text)
		else
			player:sendTextMessage(MESSAGE_LOOT, text)
		end
	end
end

function Monster:onSpawn(position)
	-- Register reward function from reward boss lib
	self:setRewardBoss()
end
