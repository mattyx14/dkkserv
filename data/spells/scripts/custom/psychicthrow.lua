local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, TRUE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ANI_NONE)
local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 3000)
setConditionFormula(condition, -0.9, 0, -0.9, 0)
local condition2 = createConditionObject(CONDITION_INFIGHT)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 20000)
function getSpellDamage(cid, weaponSkill, weaponAttack, attackStrength)
local attack = 30
local skill = 10
local maxWeaponDamage = (skill * attack) / 20 + attack
local damage = -((math.random(20, maxWeaponDamage) * attackStrength) / 100) * 2
return damage, damage
end
setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "getSpellDamage")
function unstone(param1)
if param1.smpa == 1 then
param1.smpa = 0
setPlayerStorageValue(param1.cid, 57081, 0)
for dinnerc = 1, table.maxn(param1.plincr) do
local unstoneplayer = param1.plincr[dinnerc]
setPlayerStorageValue(unstoneplayer, 57080, 0)
mayNotMove(unstoneplayer, 0)
end
end
end
function unstun(param2)
if param2.smpb == 1 then
param2.smpb = 0
setPlayerStorageValue(param2.cid, 57081, 0)
for dmiddle = 1, table.maxn(param2.plmdcr) do
local unstunplayer = param2.plmdcr[dmiddle]
setPlayerStorageValue(unstunplayer, 57080, 0)
mayNotMove(unstunplayer, 0)
end
end
end
function recharge(param4)
if param4.smpd == 1 then
param4.smpd = 0
setPlayerStorageValue(param4.cid, 57080, 0)
end
end
function onCastSpell(cid, var)
local posa = getCreaturePosition(cid)
if getPlayerStorageValue(cid, 57080) < 1 then
local otrcrc = {
{x = posa.x, y = posa.y - 3, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 3, y = posa.y, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x, y = posa.y + 3, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 3, y = posa.y, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 1, y = posa.y - 3, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 1, y = posa.y - 3, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 3, y = posa.y - 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 3, y = posa.y + 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 1, y = posa.y + 3, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 1, y = posa.y + 3, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 3, y = posa.y - 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 3, y = posa.y + 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 2, y = posa.y - 2, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 2, y = posa.y - 2, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 2, y = posa.y + 2, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 2, y = posa.y + 2, z = posa.z, stackpos = STACKPOS_TOP_CREATURE} 
}
local mdlcrc = {
{x = posa.x, y = posa.y - 2, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 2, y = posa.y, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x, y = posa.y + 2, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 2, y = posa.y, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 1, y = posa.y - 2, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 1, y = posa.y - 2, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 2, y = posa.y - 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 2, y = posa.y + 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 1, y = posa.y + 2, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 1, y = posa.y + 2, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 2, y = posa.y + 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 2, y = posa.y - 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 1, y = posa.y - 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 1, y = posa.y - 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 1, y = posa.y + 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 1, y = posa.y + 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE} 
}
local inrcrc = {
{x = posa.x, y = posa.y - 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x + 1, y = posa.y, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x, y = posa.y + 1, z = posa.z, stackpos = STACKPOS_TOP_CREATURE},
{x = posa.x - 1, y = posa.y, z = posa.z, stackpos = STACKPOS_TOP_CREATURE}
}
local plincr = {}
local plmdcr = {}
local plotcr = {}
local shockeda = 0
local shockedb = 0
local shockedc = 0
for a = 1, table.maxn(inrcrc) do
local preplayera = getThingfromPos(inrcrc[a])
if getTilePzInfo(inrcrc[a]) == 0 and getTileHouseInfo(inrcrc[a]) == 0 then
if isPlayer(preplayera.uid) == TRUE and preplayera.uid ~= cid then
table.insert(plincr, preplayera.uid)
shockeda = shockeda + 1
end
end
end
for b = 1, table.maxn(mdlcrc) do
local preplayerb = getThingfromPos(mdlcrc)
[b]if getTilePzInfo(mdlcrc) == 0 and getTileHouseInfo(mdlcrc) == 0 then
if isPlayer(preplayerb.uid) == TRUE and preplayerb.uid ~= cid then
table.insert(plmdcr, preplayerb.uid)
shockedb = shockedb + 1
end
end
end
for c = 1, table.maxn(otrcrc) do
local preplayerc = getThingfromPos(otrcrc[c])
if getTilePzInfo(otrcrc[c]) == 0 and getTileHouseInfo(otrcrc[c]) == 0 then
if isPlayer(preplayerc.uid) == TRUE and preplayerc.uid ~= cid then
table.insert(plotcr, preplayerc.uid)
shockedc = shockedc + 1
end
end
end
local totalshock = shockeda + shockedb + shockedc
if totalshock > 0 then
if shockeda > 0 then
for innerc = 1, table.maxn(plincr) do
local stoneplayer = plincr[innerc]
local posb = getPlayerPosition(stoneplayer)
doSendMagicEffect(posb, CONST_ME_STUN)
doSendMagicEffect(posb, CONST_ME_FIREWORK_YELLOW)
setPlayerStorageValue(stoneplayer, 57080, 2)
mayNotMove(stoneplayer, 1)
doAddCondition(stoneplayer, condition2)
end
local param1 = { cid = cid, combat = combat, plincr = plincr, smpa = 1 }
addEvent(unstone, 8000, param1)
end
if shockedb > 0 then
for middle = 1, table.maxn(plmdcr) do
local stunplayer = plmdcr[middle]
local posb = getPlayerPosition(stunplayer)
doSendMagicEffect(posb, CONST_ME_STUN)
doSendMagicEffect(posb, CONST_ME_FIREWORK_YELLOW)
setPlayerStorageValue(stunplayer, 57080, 2)
mayNotMove(stunplayer, 1)
doAddCondition(stunplayer, condition2)
end
local param2 = { cid = cid, combat = combat, plmdcr = plmdcr, smpb = 1 }
addEvent(unstun, 5000, param2)
end
if shockedc > 0 then
for outter = 1, table.maxn(plotcr) do
local paraplayer = plotcr[outter]
local posb = getPlayerPosition(paraplayer)
doSendMagicEffect(posb, CONST_ME_STUN)
doSendMagicEffect(posb, CONST_ME_FIREWORK_YELLOW)
doAddCondition(paraplayer, condition)
end
end
end
setPlayerStorageValue(cid, 57080, 1)
doSendDistanceShoot(posa, otrcrc[1], CONST_ANI_ENERGYBALL)
doSendDistanceShoot(posa, otrcrc[2], CONST_ANI_ENERGYBALL)
doSendDistanceShoot(posa, otrcrc[3], CONST_ANI_ENERGYBALL)
doSendDistanceShoot(posa, otrcrc[4], CONST_ANI_ENERGYBALL)
doSendDistanceShoot(posa, otrcrc[13], CONST_ANI_ENERGYBALL)
doSendDistanceShoot(posa, otrcrc[14], CONST_ANI_ENERGYBALL)
doSendDistanceShoot(posa, otrcrc[15], CONST_ANI_ENERGYBALL)
doSendDistanceShoot(posa, otrcrc[16], CONST_ANI_ENERGYBALL)
doSendMagicEffect(posa, CONST_ME_FIREWORK_BLUE)
doSendMagicEffect(posa, CONST_ME_MAGIC_GREEN)
local param4 = { cid = cid, combat = combat, smpd = 1 }
addEvent(recharge, 20000, param4)
elseif getPlayerStorageValue(cid, 57080) == 1 then
doPlayerSendCancel(cid, "Your psychic power is still recharging, wait a few seconds and try again!")
doSendMagicEffect(posa, CONST_ME_POFF)
elseif getPlayerStorageValue(cid, 57080) == 2 then
doPlayerSendCancel(cid, "You are shocked and your psychic power has been drained!")
doSendMagicEffect(posa, CONST_ME_STUN)
elseif getPlayerStorageValue(cid, 57080) == 3 then
doPlayerSendCancel(cid, "You can't do this while or right after lifting someone!")
doSendMagicEffect(posa, CONST_ME_POFF)
elseif getPlayerStorageValue(cid, 57080) == 4 then
doPlayerSendCancel(cid, "You can't do this when being lifted!")
doSendMagicEffect(posa, CONST_ME_STUN)
end
end