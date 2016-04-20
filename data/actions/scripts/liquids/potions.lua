local config = {
	-- Health Potions
	-- small health potion
	[8704] = {health = {min = 100, max = 190}, emptyId = 7636}, 
	-- health potion
	[7618] = {health = {min = 200, max = 290}, emptyId = 7636},
	-- strong health potion
	[7588] = {health = {min = 300, max = 490}, vocations = {3, 4}, text = 'paladins and knights', level = 50, emptyId = 7634},
	-- great health potion
	[7591] = {health = {min = 500, max = 890}, vocations = {3, 4}, text = 'paladins and knights', level = 80, emptyId = 7635},
	-- ultimate health potion
	[8473] = {health = {min = 900, max = 1290}, vocations = {4}, text = 'knights', level = 130, emptyId = 7635},
	-- supreme health potion
	[26031] = {health = {min = 1300, max = 1690}, mana = {min = 128, max = 175}, vocations = {4}, text = 'knights', level = 200, emptyId = 7635},

	-- Mana Potions
	-- mana potion
	[7620] = {mana = {min = 200, max = 290}, emptyId = 7636},
	-- strong mana potion
	[7589] = {mana = {min = 300, max = 490}, vocations = {1, 2, 3}, text = 'sorcerers, druids and paladins', level = 50, emptyId = 7634},
	-- great mana potion
	[7590] = {mana = {min = 500, max = 690}, vocations = {1, 2}, text = 'sorcerers and druids', level = 80, emptyId = 7635},
	-- ultimate mana potion
	[26029] = {mana = {min = 700, max = 890}, health = {min = 200, max = 390}, vocations = {1, 2}, text = 'sorcerers and druids', level = 150, emptyId = 7635},

	-- great spirit potion
	[8472] = {health = {min = 500, max = 890}, vocations = {3}, text = 'paladins', level = 130, emptyId = 7635},
	-- ultimate spirit potion
	[26030] = {health = {min = 900, max = 1290}, mana = {min = 200, max = 390}, vocations = {3}, text = 'paladins', level = 200, emptyId = 7635},

	-- Others Potions
	-- antidote potion
	[8474] = {antidote = true, emptyId = 7636}
}

local antidote = Combat()
antidote:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
antidote:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
antidote:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
antidote:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
antidote:setParameter(COMBAT_PARAM_DISPEL, CONDITION_POISON)

local exhaust = Condition(CONDITION_EXHAUST_HEAL)
exhaust:setParameter(CONDITION_PARAM_TICKS, (configManager.getNumber(configKeys.EX_ACTIONS_DELAY_INTERVAL) - 100))
-- 1000 - 100 due to exact condition timing. -100 doesn't hurt us, and players don't have reminding ~50ms exhaustion.

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local potion = config[item.itemid]
	if not potion then
		return true
	end

	if target.itemid ~= 1 or target.type ~= THING_TYPE_PLAYER then
		return false
	end

	if potion.antidote and not antidote:execute(target, Variant(target.uid)) then
		return false
	end

	if (potion.level and player:getLevel() < potion.level)
			or (type(potion.vocations) == 'table' and not isInArray(potion.vocations, player:getVocation():getBase():getId()))
			and not (player:getGroup():getId() >= 2) then
		player:say(string.format('This potion can only be consumed by %s of level %d or higher.', potion.text, potion.level), TALKTYPE_MONSTER_SAY)
		return true
	end

	if type(potion.health) == 'table' and not doTargetCombatHealth(0, target, COMBAT_HEALING, potion.health.min, potion.health.max, CONST_ME_MAGIC_BLUE) then
		return false
	end

	if type(potion.mana) == 'table' and not doTargetCombatMana(0, target, potion.mana.min, potion.mana.max, CONST_ME_MAGIC_BLUE) then
		return false
	end

	player:addCondition(exhaust)
	doCreatureSayWithRadius(target, 'Aaaah...', TALKTYPE_MONSTER_SAY, 2, 2)

	local topParent = item:getTopParent()
	if topParent.isItem and (not topParent:isItem() or topParent.itemid ~= 460) then
		local parent = item:getParent()
		if not parent:isTile() and (parent:addItem(potion.emptyId, 1) or topParent:addItem(potion.emptyId, 1)) then
			item:remove(1)
			return true
		end
	end

	Game.createItem(potion.emptyId, 1, item:getPosition())
	item:remove(1)
	return true
end
