local berserk = Condition(CONDITION_ATTRIBUTES)
berserk:setParameter(CONDITION_PARAM_SUBID, 7)
berserk:setParameter(CONDITION_PARAM_TICKS, 10 * 60 * 1000)
berserk:setParameter(CONDITION_PARAM_SKILL_MELEE, 5)
berserk:setParameter(CONDITION_PARAM_SKILL_SHIELD, -10)
berserk:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local mastermind = Condition(CONDITION_ATTRIBUTES)
mastermind:setParameter(CONDITION_PARAM_SUBID, 8)
mastermind:setParameter(CONDITION_PARAM_TICKS, 10 * 60 * 1000)
mastermind:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, 3)
mastermind:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local bullseye = Condition(CONDITION_ATTRIBUTES)
bullseye:setParameter(CONDITION_PARAM_SUBID, 9)
bullseye:setParameter(CONDITION_PARAM_TICKS, 10 * 60 * 1000)
bullseye:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 5)
bullseye:setParameter(CONDITION_PARAM_SKILL_SHIELD, -10)
bullseye:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local antidote = Combat()
antidote:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
antidote:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
antidote:setParameter(COMBAT_PARAM_DISPEL, CONDITION_POISON)
antidote:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
antidote:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, true)

local potions = {
	-- Concentrated Demonic Blood
	[6558] = {transform = {id = {7588, 7589}}, effect = CONST_ME_DRAWBLOOD},

	-- Strengthening Potions
	[7439] = {condition = berserk, vocations = {4, 8}, effect = CONST_ME_MAGIC_RED,
			description = "Only knights may drink this potion.", text = "You feel stronger."},
	[7440] = {condition = mastermind, vocations = {1, 2, 5, 6}, effect = CONST_ME_MAGIC_BLUE,
			description = "Only sorcerers and druids may drink this potion.", text = "You feel smarter."},
	[7443] = {condition = bullseye, vocations = {3, 7}, effect = CONST_ME_MAGIC_GREEN,
			description = "Only paladins may drink this potion.", text = "You feel more accurate."},

	-- All Vocations
	[8704] = {health = {100, 190}, flask = 7636}, -- Small health potion
	[7618] = {health = {200, 290}, flask = 7636}, -- Health potion
	[7620] = {mana = {200, 290}, flask = 7636}, -- Mana potion
	[8474] = {combat = antidote, flask = 7636}, -- Antidote potion

	-- Mages
	-- Ultimate Mana
	[26029] = {health = {200, 390}, mana = {700, 890}, vocations = {1, 2, 5, 6}, level = 200, flask = 7635,
			description = "Only druids and sorcerers of level 200 or above may drink this fluid."},
	-- Great Mana
	[7590] = {mana = {500, 690}, vocations = {1, 2, 5, 6}, level = 100, flask = 7635,
			description = "Only druids and sorcerers of level 100 or above may drink this fluid."},
	-- Mages and Paladin
	[7589] = {mana = {300, 490}, vocations = {1, 2, 3, 5, 6, 7}, level = 50, flask = 7634,
			description = "Only sorcerers, druids and paladins of level 50 or above may drink this fluid."},

	-- Paladin
	-- Ultimate Spirit
	[26030] = {health = {900, 1290}, mana = {200, 390}, vocations = {3, 7}, level = 230, flask = 7635,
			description = "Only paladins of level 230 or above may drink this fluid."},
	-- Great Spirit
	[8472] = {health = {500, 890}, vocations = {3, 7}, level = 150, flask = 7635,
			description = "Only paladins of level 150 or above may drink this fluid."},
	-- Paladin and Knight
	[7588] = {health = {300, 490}, vocations = {3, 4, 7, 8}, level = 50, flask = 7634,
			description = "Only knights and paladins of level 50 or above may drink this fluid."},

	-- Knight
	-- Supreme health
	[26031] = {health = {1300, 1690}, mana = {128, 175}, vocations = {4, 8}, level = 230, flask = 7635,
			description = "Only knights of level 230 or above may drink this fluid."},
	-- Ultimate health
	[8473] = {health = {900, 1290}, vocations = {4, 8}, level = 150, flask = 7635,
			description = "Only knights of level 150 or above may drink this fluid."},
	-- Great health
	[7591] = {health = {500, 890}, vocations = {4, 8}, level = 80, flask = 7635,
			description = "Only knights of level 80 or above may drink this fluid."}
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if type(target) == "userdata" and not target:isPlayer() then
		return false
	end

	local potion = potions[item:getId()]
	if potion.level and player:getLevel() < potion.level or potion.vocations and not isInArray(potion.vocations, player:getVocation():getBase():getId()) and not (player:getGroup():getId() >= 2) then
		player:say(potion.description, TALKTYPE_MONSTER_SAY)
		return true
	end

	if potion.health or potion.mana or potion.combat then
		if potion.health then
			doTargetCombatHealth(0, target, COMBAT_HEALING, potion.health[1], potion.health[2], CONST_ME_MAGIC_BLUE)
		end

		if potion.mana then
			doTargetCombatMana(0, target, potion.mana[1], potion.mana[2], CONST_ME_MAGIC_BLUE)
		end

		if potion.combat then
			potion.combat:execute(target, Variant(target:getId()))
		end

		target:say("Aaaah...", TALKTYPE_MONSTER_SAY)
		player:addItem(potion.flask, 1)
	end

	if potion.condition then
		player:addCondition(potion.condition)
		player:say(potion.text, TALKTYPE_MONSTER_SAY)
		player:getPosition():sendMagicEffect(potion.effect)
	end

	if potion.transform then
		item:transform(potion.transform.id[math.random(#potion.transform.id)])
		item:getPosition():sendMagicEffect(potion.effect)
		return true
	end

	item:remove(1)
	return true
end
