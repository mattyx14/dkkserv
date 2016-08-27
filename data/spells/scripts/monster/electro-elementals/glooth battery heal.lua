local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local area = createCombatArea(AREA_SQUARE1X1)
combat:setArea(area)

local minHeal = 50
local maxHeal = 500

function onTargetCreature(creature, target)
	if not MonsterSpellIsFriendMonster(target) then
		return true
	end

	doTargetCombatHealth(0, target, COMBAT_HEALING, minHeal, maxHeal, CONST_ME_NONE)

	return true
end

combat:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
