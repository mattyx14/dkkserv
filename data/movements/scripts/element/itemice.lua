local firstItems =
{
	15960
}

function onStepIn(cid, item, position, fromPosition)
	if isPlayer(cid) == TRUE then
		if getPlayerStorageValue(cid, 30030) == -1 then
			for i = 1, table.maxn(firstItems) do
				doPlayerAddItem(cid, firstItems[i], 1)
			end
			if getPlayerSex(cid) == 0 then
				doPlayerAddItem(cid, 9776, 1)
			else
				doPlayerAddItem(cid, 9776, 1)
			end
			local bag = doPlayerAddItem(cid, 1998, 1)
			doAddContainerItem(bag, 9777, 1)
			doAddContainerItem(bag, 9778, 1)
			setPlayerStorageValue(cid, 30030, 1)
		end
	end
 	return TRUE
end