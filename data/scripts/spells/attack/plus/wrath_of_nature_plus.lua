local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SMALLPLANTS)
combat:setArea(createCombatArea(AREA_CIRCLE6X6))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5 * 1.5) + (maglevel * 8)
	local max = (level / 5 * 1.5) + (maglevel * 10)
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:group("attack", "focus")
--spell:id(56)
spell:name("WrathofNaturePlus")
spell:words("exevo gran mas tera +")
spell:level(200)
spell:mana(700)
spell:isPremium(true)
spell:isSelfTarget(true)
spell:cooldown(20 * 1000)
spell:groupCooldown(4 * 1000, 20 * 1000)
spell:needLearn(true)
spell:vocation("elder druid;true")
spell:register()