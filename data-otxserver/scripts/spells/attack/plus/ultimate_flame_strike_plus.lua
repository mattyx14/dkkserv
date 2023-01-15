local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 5 * 1.5) + (maglevel * 6.5) + 45
	local max = (level / 5 * 1.5) + (maglevel * 7.3) + 55
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:group("attack", "ultimatestrikes")
--spell:id(154)
spell:name("UltimateFlameStrikePlus")
spell:words("exori max flam +")
spell:level(200)
spell:mana(100)
spell:isPremium(true)
spell:range(3)
spell:needCasterTargetOrDirection(true)
spell:blockWalls(true)
spell:cooldown(20 * 1000)
spell:groupCooldown(2 * 1000, 20 * 1000)
spell:needLearn(true)
spell:vocation("master sorcerer;true")
spell:register()