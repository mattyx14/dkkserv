local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_BIGCLOUDS)
combat:setArea(createCombatArea(AREA_CIRCLE6X6))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5 * 1.5) + (maglevel * 10)
	local max = (level / 5 * 1.5) + (maglevel * 14)
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:group("attack", "focus")
--spell:id(119)
spell:name("RageoftheSkiesPlus")
spell:words("exevo gran mas vis +")
spell:level(200)
spell:mana(600)
spell:isSelfTarget(true)
spell:isPremium(true)
spell:cooldown(20 * 1000)
spell:groupCooldown(4 * 1000, 20 * 1000)
spell:needLearn(true)
spell:vocation("master sorcerer;true")
spell:register()