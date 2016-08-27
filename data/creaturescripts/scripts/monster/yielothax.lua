function onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
	local targetMonster = creature:getMonster()
	--[[
		local yielothaxGlobalStor = 673003
		local yielothaxPlayerStorage = 673004
	]]
	if not targetMonster or targetMonster:getName():lower() ~= 'yielothax' then
		return true
	end
	--[[
		Game.setStorageValue(yielothaxGlobalStor, Game.getStorageValue(yielothaxGlobalStor) + 1)
		killer:setStorageValue(yielothaxPlayerStorage, killer:getStorageValue(yielothaxPlayerStorage) + 1)
	]]
	return true
end