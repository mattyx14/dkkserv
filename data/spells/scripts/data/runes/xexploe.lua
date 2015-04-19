local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
setCombatParam(combat, COMBAT_PARAM_USECHARGES, TRUE)

function getSpellDamage(cid, weaponSkill, weaponAttack, attackStrength)
    local attack = weaponAttack
    local skill = math.max(getPlayerSkill(cid, 1),getPlayerSkill(cid, 2),getPlayerSkill(cid, 3))
    local level = getPlayerLevel(cid)
    local min = -(skill+attack*2)*0.8-level/5
    local max = -(skill+attack*2)*4-level/5

    return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "getSpellDamage")



local area = createCombatArea(AREA_CROSS1X1)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end