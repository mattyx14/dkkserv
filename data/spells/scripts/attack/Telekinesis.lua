local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, TRUE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_NONE)

function getSpellDamage(cid, weaponSkill, weaponAttack, attackStrength)
local attack = 15
local skill = getPlayerMagLevel(cid)
local maxWeaponDamage = (skill * attack) / 20 + attack
local damage = -((math.random(800, maxWeaponDamage) * attackStrength) / 100) * 2.0
return damage, damage
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "getSpellDamage")

function onCastSpell(cid, var)
local allowedobjects = {1614, 1615, 1616, 1619, 1650, 1651, 1652, 1653, 1658, 1659, 1660, 1661, 1666, 1667, 1668, 1669, 1670, 1671, 1672, 1673, 1674, 1675, 1676, 1677, 1714, 1715, 1716, 1717, 1724, 1725, 1726, 1727, 1728, 1729, 1730, 1731, 1732, 1733, 1734, 1735, 1736, 1737, 1738, 1739, 1740, 1741, 1746, 1747, 1748, 1749, 1750, 1751, 1752, 1753, 1770, 1774, 1775, 2034, 2080, 2081, 2082, 2083, 2084, 2085, 2094, 2095, 2098, 2101, 2105, 2106, 3805, 3806, 3807, 3808, 3809, 3810, 3811, 3812, 3813, 3814, 3815, 3816, 3817, 3818, 3819, 3820, 3821, 6368, 6369, 6370, 6371}
local spot = getPlayerPosition(cid)
local nxp = spot.x - 2
local pxp = spot.x + 2
local nyp = spot.y - 2
local pyp = spot.y + 2
local target = getCreatureTarget(cid)
for absice = nxp, pxp do
for coordinate = nyp, pyp do
local pos = {x = absice, y = coordinate, z = spot.z, stackpos = 255}
local thing = getThingfromPos(pos)
if thing.itemid > 0 then
if isInArray(allowedobjects, thing.itemid) == TRUE then
doSendMagicEffect(pos, CONST_ME_MAGIC_GREEN)
doSendMagicEffect(spot, CONST_ME_FIREWORK_BLUE)
doRemoveItem(thing.uid, 1)
tgtpos = getCreaturePosition(target)
doSendDistanceShoot(pos, tgtpos, CONST_ANI_SUDDENDEATH)
doSendMagicEffect(tgtpos, CONST_ME_POFF)
doCreateItem(2250, 1, tgtpos)
return doCombat(cid, combat, var)
end
end
end
end
end