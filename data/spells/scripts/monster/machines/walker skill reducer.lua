local minPercent = 45
local maxPercent = 60

local area = createCombatArea(AREA_CIRCLE3X3)

local conditionKnight = Condition(CONDITION_ATTRIBUTES)
conditionKnight:setParameter(CONDITION_PARAM_TICKS, 7000)

local conditionMage = Condition(CONDITION_ATTRIBUTES)
conditionMage:setParameter(CONDITION_PARAM_TICKS, 7000)

local conditionPaladin = Condition(CONDITION_ATTRIBUTES)
conditionPaladin:setParameter(CONDITION_PARAM_TICKS, 7000)

local function configureCombat(combat, percent)
	combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
	combat:setArea(area)

	conditionKnight:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, percent)
	conditionKnight:setParameter(CONDITION_PARAM_SKILL_FISTPERCENT, percent)
	conditionKnight:setParameter(CONDITION_PARAM_SKILL_SHIELDPERCENT, percent)

	conditionMage:setParameter(CONDITION_PARAM_STAT_MAGICPOINTSPERCENT, percent)

	conditionPaladin:setParameter(CONDITION_PARAM_SKILL_DISTANCEPERCENT, percent)
	conditionPaladin:setParameter(CONDITION_PARAM_SKILL_SHIELDPERCENT, percent)


	function onTargetTile(self, pos)
		local tile = pos:getTile()
		if not tile then
			return true
		end

		local creatures = tile:getCreatures()

		if(creatures) then
			for _, creature in ipairs(creatures) do
				if (creature ~= self) then
					local player = creature:getPlayer()

					if player then
						local vocId = player:getVocation():getId()

						if isInArray(SPELL_VOCATION_MAGE, vocId) then
							player:addCondition(conditionMage)
						elseif isInArray(SPELL_VOCATION_PALADIN, vocId) then
							player:addCondition(conditionPaladin)
						elseif isInArray(SPELL_VOCATION_KNIGHT, vocId) then
							player:addCondition(conditionKnight)
						end
					end
				end
			end
		end

		return true
	end

	combat:setCallback(CALLBACK_PARAM_TARGETTILE, "onTargetTile")
end

local doCombatFunc = MonsterSpellCreateSkillReducerCombatList(minPercent, maxPercent, configureCombat)

function onCastSpell(creature, variant)
	return doCombatFunc():execute(creature, variant)
end
