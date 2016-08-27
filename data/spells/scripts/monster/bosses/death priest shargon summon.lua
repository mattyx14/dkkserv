function onCastSpell(creature, variant)
	local summonCount = #creature:getSummons()
	if summonCount < 2 then
		local mon = Game.createMonster("Lesser Death Minion", creature:getPosition(), true, true)
		if mon then
			mon:setMaster(creature)
			return true
		end
	end

	return false
end
