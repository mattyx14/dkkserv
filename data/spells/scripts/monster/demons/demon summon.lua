local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)

local area = createCombatArea(AREA_BEAM1)
combat:setArea(area)

function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < 1 then
		summon = Game.createMonster("Fire Elemental", Position(creature:getPosition().x + math.random(-1, 1), creature:getPosition().y + math.random(-1, 1), creature:getPosition().z))
		if summon then
			summon:setMaster(creature)
			return combat:execute(creature, variant)
		end
	end

	return false
end
