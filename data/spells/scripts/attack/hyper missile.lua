local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0.9, -30, -1.4, 0)

local distanceCombat = createCombatObject()
setCombatParam(distanceCombat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(distanceCombat, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(distanceCombat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SMALLHOLY)
setCombatFormula(distanceCombat, COMBAT_FORMULA_LEVELMAGIC, -0.9, -30, -1.4, 0)

function onCastSpell(cid, var)
	local target = getCreatureTarget(cid)
	if(target ~= 0) then
		return doCombat(cid, distanceCombat, numberToVariant(target))
	end
	return doCombat(cid, combat, var)
end