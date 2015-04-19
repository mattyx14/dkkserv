local combat = createCombatObject()
local combat2 = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0, 0, 1.0, 0)


setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_ICETORNADO)
setCombatFormula(combat2, COMBAT_FORMULA_SKILL, 0, 0, 0.1, 0)

function onUseWeapon(cid, var)
doCombat(cid, combat2, var)
return doCombat(cid, combat, var)
end