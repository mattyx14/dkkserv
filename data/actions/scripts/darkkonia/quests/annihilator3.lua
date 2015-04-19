local playerPosition =
{
	{x = 1474, y = 376, z = 8, stackpos = STACKPOS_TOP_CREATURE},
	{x = 1474, y = 379, z = 8, stackpos = STACKPOS_TOP_CREATURE},
	{x = 1474, y = 383, z = 8, stackpos = STACKPOS_TOP_CREATURE},
	{x = 1474, y = 386, z = 8, stackpos = STACKPOS_TOP_CREATURE}
}

local newPosition =
{
	{x = 1290, y = 1048, z = 10},
 	{x = 1298, y = 1042, z = 10},
	{x = 1298, y = 1054, z = 10},
	{x = 1306, y = 1048, z = 10}
}

-- Do not modify the declaration lines below.
local player = {0, 0, 0, 0}
local failed = FALSE

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.itemid == 1945 then
		for i = 1, 4 do
			failed = TRUE
			player[i] = getThingfromPos(playerPosition[i])
			if player[i].itemid > 0 then
				if isPlayer(player[i].uid) == TRUE then
					if getPlayerStorageValue(player[i].uid, 30016) == -1 then
						if getPlayerLevel(player[i].uid) >= 50 then
							failed = FALSE
						end
					end
				end
			end
			if failed == TRUE then
				doPlayerSendCancel(cid, "Sorry, not possible.")
				return TRUE
			end
		end
		for i = 1, 4 do
			doSendMagicEffect(playerPosition[i], CONST_ME_POFF)
			doTeleportThing(player[i].uid, newPosition[i], FALSE)
			doSendMagicEffect(newPosition[i], CONST_ME_ENERGYAREA)
		end
		doTransformItem(item.uid, item.itemid + 1)
	elseif item.itemid == 1946 then
		doPlayerSendCancel(cid, "Sorry, not possible.")
	end
	return TRUE
end