local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

function onCastSpell(cid, var)
    local mana = math.random(300, 400)
    doPlayerAddMana(cid, mana)
    --doSendAnimatedText(getPlayerPosition(cid), '+' .. mana, TEXTCOLOR_GOLD)
    return doCombat(cid, combat, var)	   	
end