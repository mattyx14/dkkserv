local area = createCombatArea(AREA_SQUARE1X1)

local function configureCombat(combat, damage)
	combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
	combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SMALLCLOUDS)

	combat:setArea(area)
end

local doCombatFunc = MonsterSpellCreateCursedCombatList(2, 2, 2, 19, 19, 1.2, 4000, configureCombat)

function onCastSpell(creature, variant)
	return doCombatFunc():execute(creature, variant)
end
