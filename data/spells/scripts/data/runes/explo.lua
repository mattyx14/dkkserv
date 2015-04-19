local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EXPLOSION)
setCombatParam(combat, COMBAT_PARAM_USECHARGES, TRUE)

function getSpellDamage(cid, weaponSkill, weaponAttack, attackStrength)
    local attack = weaponAttack
    local skill = math.max(getPlayerSkill(cid, 1),getPlayerSkill(cid, 2),getPlayerSkill(cid, 3),getPlayerSkill(cid, 4))
    local level = getPlayerLevel(cid)
    local min = -(skill+attack*3)*1-level/5 -100
    local max = -(skill+attack*6)*2-level/5 -200

    return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "getSpellDamage")



local area = createCombatArea(AREA_CROSS1X1)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end