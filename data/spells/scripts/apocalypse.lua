local combat = createCombatObject()

arr = {
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function spellCallback(param)
	if param.count > 0 or math.random(0, 1) == 1 then
		doSendMagicEffect(param.pos, CONST_ME_MORTAREA)
		doAreaCombatHealth(param.cid, COMBAT_FIREDAMAGE, param.pos, 0, -800, -1050, CONST_ME_MORTAREA)
	end

	if(param.count < 6) then
		param.count = param.count + 1
		addEvent(spellCallback, math.random(500, 1000), param)
	end
end

function onTargetTile(cid, pos)
	local param = {}
	param.cid = cid
	param.pos = pos
	param.count = 0
	spellCallback(param)
end

setCombatCallback(combat, CALLBACK_PARAM_TARGETTILE, "onTargetTile")

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end