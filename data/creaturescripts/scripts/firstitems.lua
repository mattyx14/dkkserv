local firstItems =
{
	2050,
	2382
}

function onLogin(cid)
	if getPlayerStorageValue(cid, 30001) == -1 then
		for i = 1, table.maxn(firstItems) do
			doPlayerAddItem(cid, firstItems[i], 1)
		end
		if getPlayerSex(cid) == 0 then
			doPlayerAddItem(cid, 2651, 1)
		else
			doPlayerAddItem(cid, 2650, 1)
		end
		local bag = doPlayerAddItem(cid, 1987, 1)
		doAddContainerItem(bag, 2649, 1)
		doAddContainerItem(bag, 2526, 1)
		doAddContainerItem(bag, 2480, 1)
		doAddContainerItem(bag, 2643, 1)
		setPlayerStorageValue(cid, 30001, 1)
	end
 	return TRUE
end