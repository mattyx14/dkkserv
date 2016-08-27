local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_DRAWBLOOD)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local area = createCombatArea({
	{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0},
	{0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
})

combat:setArea(area)

local minHealing = 4000
local maxHealing = 5000

function onTargetCreature(creature, target)
	if not MonsterSpellIsFriendMonster(target) then
		return true
	end

	local hp = creature:getHealthPercent()

	if hp > 75 then
		doTargetCombatHealth(0, target, COMBAT_HEALING, minHealing, maxHealing, CONST_ME_NONE)
	elseif (hp < 75) and (hp > 50) then
		doTargetCombatHealth(0, target, COMBAT_HEALING, minHealing * 0.5, maxHealing * 0.5, CONST_ME_NONE)
	elseif (hp < 50) and (hp > 25) then
		doTargetCombatHealth(0, target, COMBAT_HEALING, minHealing * 0.25, maxHealing * 0.25, CONST_ME_NONE)
	elseif hp < 25 then
		doTargetCombatHealth(0, target, COMBAT_HEALING, minHealing * 0.10, maxHealing * 0.10, CONST_ME_NONE)
	end

	return true
end

combat:setCallback(CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
