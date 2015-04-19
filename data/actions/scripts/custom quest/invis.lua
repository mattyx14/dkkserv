local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_OUTFIT)

function onUse(cid, item, frompos, item2, topos)
local invis = getPlayerStorageValue(cid, 1337)
if invis == -1 or invis == 0 then
doSetItemOutfit(cid, 459, cid)
setPlayerStorageValue(cid, 1337, 1)
else
local var = numberToVariant(cid)
doCombat(0, combat, var)
setPlayerStorageValue(cid, 1337, 0)
end
return 1
end