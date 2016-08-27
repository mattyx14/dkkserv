function onCastSpell(creature, variant)
	local msg = "<the welter devours his spawn and heals himself>"
	local summon = creature:getSummons()
	for i = 1, #summon do
		if summon[i]:getName() == "Egg" then
			summon[i]:getPosition():sendMagicEffect(CONST_ME_HITBYPOISON)
			local remov = summon[i]:remove()
			if not remov then
				return true
			end
			creature:say(msg, TALKTYPE_ORANGE_1)
			creature:addHealth(25000)
			creature:getPosition():sendMagicEffect(CONST_ME_ENERGYHIT)
		elseif summon[i]:getName() == "Spawn Of The Welter" then
			summon[i]:getPosition():sendMagicEffect(CONST_ME_DRAWBLOOD)
			local remov = summon[i]:remove()
			if not remov then
				return true
			end
			creature:say(msg, TALKTYPE_ORANGE_1)
			creature:addHealth(25000)
			creature:getPosition():sendMagicEffect(CONST_ME_ENERGYHIT)
		end

		return true
	end
end
