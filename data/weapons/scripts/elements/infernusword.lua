local combat = createCombatObject()
local combat2 = createCombatObject()
local combat3 = createCombatObject()
local combat4 = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 1.5, 0, 2.0, 0)

setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatFormula(combat2, COMBAT_FORMULA_SKILL, 0.2, 0, 0.45, 0)

setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, CONST_ME_ICEAREA)
setCombatFormula(combat3, COMBAT_FORMULA_SKILL, 0.2, 0, 0.45, 0)

setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, CONST_ME_HOLYAREA)
setCombatFormula(combat4, COMBAT_FORMULA_SKILL, 0.2, 0, 0.45, 0)

function onUseWeapon(cid, var)
doCombat(cid, combat4, var)
return doCombat(cid, combat, var)
end