local combat = {}

for i = 25, 30 do
	combat[i] = Combat()
	combat[i]:setParameter(COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
	combat[i]:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITBYPOISON)

	local condition = Condition(CONDITION_POISON)
	condition:setParameter(CONDITION_PARAM_DELAYED, true)
	condition:addDamage(10, 4000, -i)
	condition:addDamage(10, 4000, -i + 1)
	condition:addDamage(10, 4000, -i + 2)
	condition:addDamage(10, 4000, -i + 3)
	condition:addDamage(10, 4000, -i + 4)


	local area = createCombatArea(AREA_SQUARE1X1)
	combat[i]:setArea(area)
	combat[i]:setCondition(condition)
end

function onCastSpell(creature, variant)
	return combat[math.random(25, 30)]:execute(creature, variant)
end

