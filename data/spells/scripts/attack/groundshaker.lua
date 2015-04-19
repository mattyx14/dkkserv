local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_GROUNDSHAKER)
setCombatParam(combat, COMBAT_PARAM_USECHARGES, TRUE)


function getSpellDamage(cid, weaponSkill, weaponAttack, attackStrength)
    local attack = weaponAttack
    local skill = math.max(getPlayerSkill(cid, 1),getPlayerSkill(cid, 2),getPlayerSkill(cid, 3))
    local level = getPlayerLevel(cid)
    local min = -(skill+attack*1)*1.8-level/2 -100
    local max = -(skill+attack*1.5)*2.8-level/5 -150

    return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "getSpellDamage")


local area = createCombatArea(AREA_CIRCLE3X3)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end