local acombat = createCombatObject()

local combat8 = createCombatObject()
setCombatParam(combat8, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat8, COMBAT_PARAM_EFFECT, 255)
setCombatParam(combat8, COMBAT_PARAM_DISTANCEEFFECT, 40)
setCombatFormula(combat8, COMBAT_FORMULA_SKILL, -0.0, -0, -0, -0)

local combat9 = createCombatObject()
setCombatParam(combat9, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(combat9, COMBAT_PARAM_EFFECT, 44)
setCombatFormula(combat9, COMBAT_FORMULA_LEVELMAGIC, -0.0, -0, -0, -0)

local combat10 = createCombatObject()
setCombatParam(combat10, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(combat10, COMBAT_PARAM_EFFECT, 44)
setCombatFormula(combat10, COMBAT_FORMULA_LEVELMAGIC, -0.0, -0, -0.0, -0)

local combat11 = createCombatObject()
setCombatParam(combat11, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(combat11, COMBAT_PARAM_EFFECT, 44)
setCombatFormula(combat11, COMBAT_FORMULA_LEVELMAGIC, -0.0, -0, -0.0, -0)
 
local combat12 = createCombatObject()
setCombatParam(combat12, COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
setCombatParam(combat12, COMBAT_PARAM_EFFECT, 44)
setCombatFormula(combat12, COMBAT_FORMULA_LEVELMAGIC, -0.8, -0, -1.2, -0)
 
local combat13 = createCombatObject()
setCombatParam(combat13, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat13, COMBAT_PARAM_EFFECT, 45)
setCombatFormula(combat13, COMBAT_FORMULA_LEVELMAGIC, -0.0, -0, -0.0, -0)
 
local combat14 = createCombatObject()
setCombatParam(combat14, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat14, COMBAT_PARAM_EFFECT, 45)
setCombatFormula(combat14, COMBAT_FORMULA_LEVELMAGIC, -0.0, -0, -0.0, -0)

local combat15 = createCombatObject()
setCombatParam(combat15, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat15, COMBAT_PARAM_EFFECT, 45)
setCombatFormula(combat15, COMBAT_FORMULA_LEVELMAGIC, -0.0, -0, -0.0, -0)

local combat16 = createCombatObject()
setCombatParam(combat16, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat16, COMBAT_PARAM_EFFECT, 45)
setCombatFormula(combat16, COMBAT_FORMULA_LEVELMAGIC, -0.0, -0, -0.0, -0)

local combat17 = createCombatObject()
setCombatParam(combat17, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat17, COMBAT_PARAM_EFFECT, 49)
setCombatFormula(combat17, COMBAT_FORMULA_LEVELMAGIC, -0.0, -0, -0.0, -0)

local combat18 = createCombatObject()
setCombatParam(combat18, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat18, COMBAT_PARAM_EFFECT, 28)
setCombatFormula(combat18, COMBAT_FORMULA_LEVELMAGIC, -0.0, -0, -0.0, -0)



local arr8 = {
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0},
{0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

local arr9 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

local arr10 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}


local arr11 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}


local arr12 = {
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

local arr13 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

local arr14 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

local arr15 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

local arr16 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}


local arr17 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}


local arr18 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}





local area8 = createCombatArea(arr8)
local area9 = createCombatArea(arr9)
local area10 = createCombatArea(arr10)
local area11 = createCombatArea(arr11)
local area12 = createCombatArea(arr12)
local area13 = createCombatArea(arr13)
local area14 = createCombatArea(arr14)
local area15 = createCombatArea(arr15)
local area16 = createCombatArea(arr16)
local area17 = createCombatArea(arr17)
local area18 = createCombatArea(arr18)
setCombatArea(acombat, area8)
setCombatArea(combat9, area9)
setCombatArea(combat10, area10)
setCombatArea(combat11, area11)
setCombatArea(combat12, area12)
setCombatArea(combat13, area13)
setCombatArea(combat14, area14)
setCombatArea(combat15, area15)
setCombatArea(combat16, area16)
setCombatArea(combat17, area17)
setCombatArea(combat18, area18)



function onTargetTile(cid, pos)
	doCombat(cid,combat8,positionToVariant(pos))
end



setCombatCallback(acombat, CALLBACK_PARAM_TARGETTILE, "onTargetTile")


 
local function onCastSpell8(parameters)
    doCombat(parameters.cid, acombat, parameters.var)
end

local function onCastSpell9(parameters)
    doCombat(parameters.cid, combat9, parameters.var)
end

local function onCastSpell10(parameters)
    doCombat(parameters.cid, combat10, parameters.var)
end

local function onCastSpell11(parameters)
    doCombat(parameters.cid, combat11, parameters.var)
end

local function onCastSpell12(parameters)
    doCombat(parameters.cid, combat12, parameters.var)
end

local function onCastSpell13(parameters)
    doCombat(parameters.cid, combat13, parameters.var)
end

local function onCastSpell14(parameters)
    doCombat(parameters.cid, combat14, parameters.var)
end

local function onCastSpell15(parameters)
    doCombat(parameters.cid, combat15, parameters.var)
end

local function onCastSpell16(parameters)
    doCombat(parameters.cid, combat16, parameters.var)
end

local function onCastSpell17(parameters)
    doCombat(parameters.cid, combat17, parameters.var)
end

local function onCastSpell18(parameters)
    doCombat(parameters.cid, combat18, parameters.var)
end



function onCastSpell(cid, var)
local parameters = { cid = cid, var = var}
addEvent(onCastSpell8, 0, parameters)
addEvent(onCastSpell9, 0, parameters)
addEvent(onCastSpell10, 50, parameters)
addEvent(onCastSpell11, 100, parameters)
addEvent(onCastSpell12, 150, parameters)
addEvent(onCastSpell13, 100, parameters)
addEvent(onCastSpell14, 150, parameters)
addEvent(onCastSpell15, 200, parameters)
addEvent(onCastSpell16, 250, parameters)
addEvent(onCastSpell17, 0, parameters)
addEvent(onCastSpell18, 100, parameters)
end