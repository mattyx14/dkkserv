local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_SOUND_RED)

local area = createCombatArea(AREA_CROSS1X1)
combat:setArea(area)

function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < 1 then
		summon = Game.createMonster("Troll-trained Salamander", creature:getPosition())
		if summon then
			summon:setMaster(creature)
			return combat:execute(creature, variant)
		end
	end

	return false
end
