local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, TRUE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_NONE)
function getSpellDamage(cid, weaponSkill, weaponAttack, attackStrength)
local attack = 20
local skill = getPlayerMagLevel(cid)
local maxWeaponDamage = (skill * attack) / 10 + attack
local damage = -((math.random(20, maxWeaponDamage) * attackStrength) / 50) * 2
return damage, damage
end
setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "getSpellDamage")
function onCastSpell(cid, var)
local pla = getPlayerPosition(cid)
if getPlayerStorageValue(cid, 57081) > 0 then
local tgt = getCreatureTarget(cid)
local lpl = getPlayerStorageValue(cid, 57081)
local plb = getCreaturePosition(tgt)
local plc = getPlayerPosition(lpl)
if lpl ~= tgt then
doSendMagicEffect(pla, CONST_ME_HITBYPOISON)
doSendMagicEffect(pla, CONST_ME_MAGIC_GREEN)
doSendMagicEffect(plc, CONST_ME_FIREWORK_BLUE)
doSendMagicEffect(plc, CONST_ME_MAGIC_GREEN)
doTeleportThing(lpl, plb, FALSE)
doSendDistanceShoot(plc, plb, CONST_ANI_SUDDENDEATH)
doSendMagicEffect(plb, CONST_ME_GROUNDSHAKER)
doSendMagicEffect(plb, CONST_ME_DRAWBLOOD)
setPlayerStorageValue(lpl, 57080, 0)
doCombat(cid, combat, numberToVariant(lpl))
doCombat(cid, combat, var)
else
doPlayerSendCancel(cid, "This is impossible!")
doSendMagicEffect(pla, CONST_ME_POFF)
end
else
doPlayerSendCancel(cid, "You do not have a player to throw!")
doSendMagicEffect(pla, CONST_ME_POFF)
end
end