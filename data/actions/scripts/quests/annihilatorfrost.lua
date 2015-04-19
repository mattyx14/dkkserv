local playerPosition =
{
	{x = 719, y = 729, z = 10, stackpos = STACKPOS_TOP_CREATURE},
	{x = 720, y = 729, z = 10, stackpos = STACKPOS_TOP_CREATURE},
	{x = 721, y = 729, z = 10, stackpos = STACKPOS_TOP_CREATURE},
	{x = 722, y = 729, z = 10, stackpos = STACKPOS_TOP_CREATURE}
}

local newPosition =
{
	{x = 646, y = 609, z = 14},
 	{x = 646, y = 612, z = 14},
	{x = 646, y = 615, z = 14},
	{x = 646, y = 618, z = 14}
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
					if getPlayerStorageValue(player[i].uid, 30017) == -1 then
						if getPlayerLevel(player[i].uid) >= 130 then
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