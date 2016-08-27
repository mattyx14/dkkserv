local position = {
    [1] = {pos = {x= 0, y= 0, z= 0}},
    [2] = {pos = {x= 0, y= 0, z= 0}},
    [3] = {pos = {x= 0, y= 0, z= 0}},
    [4] = {pos = {x= 0, y= 0, z= 0}}
}

function onThink(creature)
	local chance = math.random(1, 100)
	if chance < 7 then
		if(not creature:isMonster()) then 
			return true
		end
		local spawn = position[math.random(4)]
		creature:teleportTo(spawn.pos)
		creature:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end
end