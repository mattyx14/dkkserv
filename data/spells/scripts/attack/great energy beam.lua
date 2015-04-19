local acombat1 = createCombatObject()
local acombat12 = createCombatObject()
local tacombat1 = createCombatObject()
local tacombat12 = createCombatObject()

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 30)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 35)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -1.3, -0, -1.7, -0)
 
local combat12 = createCombatObject()
setCombatParam(combat12, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat12, COMBAT_PARAM_EFFECT, 30)
setCombatParam(combat12, COMBAT_PARAM_DISTANCEEFFECT, 35)
setCombatFormula(combat12, COMBAT_FORMULA_LEVELMAGIC, -1.3, -0, -1.7, -0)

local tcombat1 = createCombatObject()
setCombatParam(tcombat1, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(tcombat1, COMBAT_PARAM_EFFECT, 11)
setCombatParam(tcombat1, COMBAT_PARAM_DISTANCEEFFECT, 35)
setCombatFormula(tcombat1, COMBAT_FORMULA_LEVELMAGIC, -0.0, -0, -0.0, -0)
 
local tcombat12 = createCombatObject()
setCombatParam(tcombat12, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(tcombat12, COMBAT_PARAM_EFFECT, 11)
setCombatParam(tcombat12, COMBAT_PARAM_DISTANCEEFFECT, 35)
setCombatFormula(tcombat12, COMBAT_FORMULA_LEVELMAGIC, -0.0, -0, -0.0, -0)

arr1 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0}
}
 

arr12 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0}
}

 
  
local area1 = createCombatArea(arr1)
local area12 = createCombatArea(arr12)
setCombatArea(acombat1, area1)
setCombatArea(acombat12, area12)
setCombatArea(tacombat1, area1)
setCombatArea(tacombat12, area12)


function onTargetTile(cid, pos)
	doCombat(cid,combat1,positionToVariant(pos))
end

function onTargetTile12(cid, pos)
	doCombat(cid,combat12,positionToVariant(pos))
end

function onTargetTilet(cid, pos)
	doCombat(cid,tcombat1,positionToVariant(pos))
end

function onTargetTile12t(cid, pos)
	doCombat(cid,tcombat12,positionToVariant(pos))
end



setCombatCallback(acombat1, CALLBACK_PARAM_TARGETTILE, "onTargetTile")


setCombatCallback(acombat12, CALLBACK_PARAM_TARGETTILE, "onTargetTile12")


setCombatCallback(tacombat1, CALLBACK_PARAM_TARGETTILE, "onTargetTilet")


setCombatCallback(tacombat12, CALLBACK_PARAM_TARGETTILE, "onTargetTile12t")




local function onCastSpell2(parameters)
    doCombat(parameters.cid, tacombat1, parameters.var)
end
 
local function onCastSpell3(parameters)
    doCombat(parameters.cid, tacombat12, parameters.var)
end
 
local function onCastSpell1(parameters)
    doCombat(parameters.cid, acombat1, parameters.var)
end
 
local function onCastSpell12(parameters)
    doCombat(parameters.cid, acombat12, parameters.var)
end
 
 

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var}
addEvent(onCastSpell1, 200, parameters)
addEvent(onCastSpell12, 0, parameters)
addEvent(onCastSpell3, 100, parameters)
addEvent(onCastSpell2, 300, parameters)

end