local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)

function onUse(cid, item, frompos, item2, topos)

Itempos = {x=topos.x,y=topos.y,z=topos.z,stackpos=1}
Item = getThingfromPos(Itempos)

if Item.itemid > 0 then
doSendMagicEffect(topos, 14)
doRemoveItem(Item.uid, 1)
doSendAnimatedText(Itempos,"Brumm!",12)

end
return 1
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")


function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end