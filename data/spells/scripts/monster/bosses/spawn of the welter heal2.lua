local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local area = createCombatArea(AREA_CIRCLE3X3)
combat:setArea(area)

local minDamage = 200
local maxDamage = 300

function onTargetCreature(creature, target)
	if not MonsterSpellIsFriendMonster(target) then
		return true
	end

	doTargetCombatHealth(0, target, COMBAT_HEALING, minDamage, maxDamage, CONST_ME_NONE)
	return true
end

combat:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
