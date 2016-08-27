local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_NONE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)

local area = createCombatArea(AREA_SQUARE1X1)
combat:setArea(area)

local healValue = 65000

function onCastSpell(creature, variant)
	local spectators = Game.getSpectators(creature:getPosition(), false, false, 10, 10, 10, 10)

	for _, spectator in ipairs(spectators) do
		if spectator:isMonster() and (spectator:getName() == "Necromantic Energy") then
			spectator:getPosition():sendMagicEffect(CONST_ME_POFF)
			spectator:remove()

			creature:say("Shargon absorbs necromantic energy to regenerate!", TALKTYPE_ORANGE_1)
			creature:addHealth(healValue)

			return combat:execute(creature, variant)
		end
	end

	return false
end
