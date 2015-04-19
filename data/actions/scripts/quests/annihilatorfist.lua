local playerPosition =
{
	{x = 973, y = 1068, z = 9, stackpos = STACKPOS_TOP_CREATURE},
	{x = 974, y = 1068, z = 9, stackpos = STACKPOS_TOP_CREATURE},
	{x = 975, y = 1068, z = 9, stackpos = STACKPOS_TOP_CREATURE},
	{x = 976, y = 1068, z = 9, stackpos = STACKPOS_TOP_CREATURE}
}

local newPosition =
{
	{x = 1229, y = 1048, z = 10},
 	{x = 1230, y = 1048, z = 10},
	{x = 1231, y = 1048, z = 10},
	{x = 1232, y = 1048, z = 10}
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
					if getPlayerStorageValue(player[i].uid, 60018) == -1 then
						if getPlayerLevel(player[i].uid) >= 100 then
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