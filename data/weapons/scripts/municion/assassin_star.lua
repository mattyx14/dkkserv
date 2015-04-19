local combat = createCombatObject()
local combat2 = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_REDSTAR)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0.5, 0, 1, 0)


setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_REDSTAR)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_FIREAREA)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -20, -0.2, 0)

function onUseWeapon(cid, var)
doCombat(cid, combat2, var)
return doCombat(cid, combat, var)
end