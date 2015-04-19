------Made by BomBa
 local minDamage = 50
 local maxDamage = 300

function onStepIn(cid, item, pos)
	if item.actionid == 65535 then
	if math.random(1, 6) == TRUE then
	   doTargetCombatHealth(0, cid, COMBAT_POISONDAMAGE, -minDamage, -maxDamage, CONST_ME_BIGPLANTS)
  end
 end
  return TRUE
end
