potions = {
	-- The values used in every config is copied from tibia wiki!
	removePotions = true,
	addEmptyPotions = true,
	words = "Aaaah...",
	healthRate = 1,
	manaRate = 1,	
	-- string to say if player can't use the potion!
	-- First skip is for vocations, second skip is for level!
	stringOfVocation = "This potion can only be consumed by %s of level %s or higher", -- (Required*)
	-- Health & Spirit Potions
	-- Knight Potions
	[26031] = { -- supreme health potion
		vocations = {4, 8},
		minLevel = 200,
		healthToAdd = { min = 1350, max = 1650 },
		manaToAdd = { min = 128, max = 175},
		emptyPotion = 7635
	},
	[8473] = { -- ultimate health potion
		vocations = {4, 8},
		minLevel = 130,
		healthToAdd = { min = 900, max = 1200 },
		emptyPotion = 7635
	},

	-- Paladin Potions
	[26030] = { -- ultimate spitit potion
		vocations = {3, 7},
		minLevel = 200,
		healthToAdd = { min = 900, max = 1100},
		manaToAdd = { min = 200, max = 350},
		emptyPotion = 7635
	},
	[8472] = { -- great spitit potion
		vocations = {3, 7},
		minLevel = 130,
		healthToAdd = { min = 750, max = 900},
		emptyPotion = 7635
	},

	-- Paladin & Knight Potions
	[7591] = { -- great health potion
		vocations = {3, 4, 7, 8},
		minLevel = 80,
		healthToAdd = { min = 550, max = 700},
		emptyPotion = 7635
	},
	[7588] = { -- strong health potion
		vocations = {3, 4, 7, 8},
		minLevel = 50,
		healthToAdd = { min = 350, max = 500},
		emptyPotion = 7634
	},

	-- Mana Potions
	-- Mage Potions
	[26029] = { -- ultimate mana potion
		vocations = {1, 2, 5, 6},
		minLevel = 150,
		healthToAdd = { min = 150, max = 250},
		manaToAdd = { min = 700, max = 900},
		emptyPotion = 7635
	},
	[7590] = { -- great mana potion
		vocations = {1, 2, 5, 6},
		minLevel = 80,
		manaToAdd = { min = 500, max = 650},
		emptyPotion = 7635
	},

	-- Mage and Paladin Potion
	[7589] = { -- strong mana potion
		vocations = {1, 2, 3, 5, 6, 7},
		minLevel = 50,
		manaToAdd = { min = 300, max = 450},
		emptyPotion = 7634
	},

	-- Normal Potions 
	-- Healh and Mana
	[7618] = { -- health potion
		healthToAdd = { min = 200, max = 300},
		emptyPotion = 7636
	},
	[7620] = { -- mana potion
		manaToAdd = { min = 200, max = 300},
		emptyPotion = 7636
	},
	[8704] = { -- small health potion
		healthToAdd = { min = 100, max = 150},
		emptyPotion = 7636
	},
}

-- antidote
local antidote = Combat()
antidote:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
antidote:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
antidote:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
antidote:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
antidote:setParameter(COMBAT_PARAM_DISPEL, CONDITION_POISON)
potions[8474] = {combat = antidote, emptyPotion = 7636}

--- FUNCTIONS ---
potions.exhaust = Condition(CONDITION_EXHAUST_HEAL)
potions.exhaust:setParameter(CONDITION_PARAM_TICKS, (configManager.getNumber(configKeys.EX_ACTIONS_DELAY_INTERVAL) - 100))
-- 1000 - 100 due to exact condition timing. -100 doesn't hurt us, and players don't have reminding ~50ms exhaustion.

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if target == nil or not target:isPlayer() then
		return true
	end

	local potion = potions[item:getId()]
	if potion then
		if (potion.vocations or potion.minLevel) and not player:getGroup():getAccess() then
			if not potion.minLevel then
				potion.minLevel = 1
			end

			if not potion.vocations then
				potion.vocations = { [1] = player:getVocation():getId() }
			end

			if not isInArray(potion.vocations, player:getVocation():getId()) or player:getLevel() < potion.minLevel then
				local str, vocations = "", {}
				-- We only show unpromoted vocations in description.
				for k, v in ipairs(potion.vocations) do
					if not Vocation(v):getDemotion() then
						table.insert(vocations, v)
					end
				end

				-- If we prefered to only put promoted vocations, we only show those who are lowered!
				-- Instead of showing (elite knigts, epic knights, ..), only shows (elite knights)
				-- It don't get affected by adding different vocations!
				if #vocations <= 0 then
					local function tablefind(t, value)
						for k, v in ipairs(t) do
							if v == value then
								return true
							end
						end
						return false
					end

					for k, v in ipairs(potion.vocations) do
						if not tablefind(potion.vocations, Vocation(v):getDemotion():getId()) then
							table.insert(vocations, v)
						end
					end
				end

				for i = 1, #vocations do
					if i == #vocations then
						str = str .. (#vocations ~= 1 and " and " or "") .. Vocation(vocations[i]):getName():lower() .. "s"
					else
						str = str .. (i ~= 1 and ", " or "") .. Vocation(vocations[i]):getName():lower() .. "s"
					end
				end

				vocations = nil

				if str == "" then
					str = "players"
				end

				player:say(string.format(potions.stringOfVocation, str, potion.minLevel), TALKTYPE_MONSTER_SAY)
				return false
			end
		end

		
		--[[
			-- Condition exists after the check!
			if player:getCondition(CONDITION_EXHAUST_HEAL) then
				player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_YOUAREEXHAUSTED))
				return true
			end
		]]

		if potion.healthToAdd then
			if not doTargetCombatHealth(0, target, COMBAT_HEALING, potion.healthToAdd.min * (potions.healthRate and potions.healthRate or 1),
					potion.healthToAdd.max * (potions.healthRate and potions.healthRate or 1), CONST_ME_MAGIC_BLUE) then
				return false
			end
		end

		if potion.manaToAdd then
			if not doTargetCombatMana(0, target, potion.manaToAdd.min * (potions.manaRate and potions.manaRate or 1),
					potion.manaToAdd.max * (potions.manaRate and potions.manaRate or 1), CONST_ME_MAGIC_BLUE) then
				return false
			end
		end

		if potion.combat then
			if not potion.combat:execute(target, numberToVariant(target:getId())) then
				return false
			end
		end

		if potion.condition and potion.condition:getType() ~= CONDITION_EXHAUST_HEAL then
			if not player:addCondition(potion.condition) then
				return false
			end
		end

		if potions.words then
			target:say(potions.words, TALKTYPE_MONSTER_SAY)
		end

		if potions.removePotions then
			if potions.addEmptyPotions and potion.emptyPotion then
				-- potion's empty potion should be in player's backpack only if the potion was in his backpack!
				if item:getTopParent().uid == player.uid then
					player:addItem(potion.emptyPotion)
				else
					Game.createItem(potion.emptyPotion, 1, item:getPosition())
				end
			end

			-- Removing potion at the end to avoid <nil> error.
			item:remove(1)
		end

		-- Access members aren't affected by the exaust!
		if not player:getGroup():getAccess() then
			player:addCondition(potions.exhaust) -- Last thing to do is adding condition!
		end
	end
	return true
end
