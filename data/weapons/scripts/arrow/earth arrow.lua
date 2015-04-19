local combat = createCombatObject()
local combat2 = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)
setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLEARTH)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 0.2, 0, 1, 0)


setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTHARROW)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_CARNIPHILA)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -0.1, -20, -0.3, 0)

function onUseWeapon(cid, var)
doCombat(cid, combat2, var)
return doCombat(cid, combat, var)
end