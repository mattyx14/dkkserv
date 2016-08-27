function onCastSpell(creature, variant)
	local spectators = Game.getSpectators(creature:getPosition(), false, false, 25, 25, 25, 25)

	for _, spectator in ipairs(spectators) do
		if spectator:isMonster() and spectator:getName() == "Greater Canopic Jar" then
			creature:addHealth(10000)
			creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
			return true
		end
	end

	return false
end
