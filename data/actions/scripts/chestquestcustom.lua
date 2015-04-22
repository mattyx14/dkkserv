local t = {
	--[[ Config: Action:Storage:ItemDescription:ItemID]]
	-- Annihi III
	[12901] = {10305, "demon armor", 2494},
	[12902] = {10306, "demon legs", 2495},
	[12903] = {10305, "horned helmet", 2496},
	[12904] = {10306, "crystal boots", 11117},
	[12905] = {10307, "heroic armor", 12607},
	[12906] = {10307, "heroic shield", 12644},
	[12907] = {10307, "heroic boots", 12646},

	-- POI
	[12908] = {50009, "brotherhood outfit and spellbook of warding", 8901},
	[12909] = {50009, "brotherhood outfit and warsinger bow", 8854},
	[12910] = {50009, "brotherhood outfit and the avenger", 6528},
	[12911] = {50009, "brotherhood outfit and glorious axe", 7454},
	[12912] = {50009, "brotherhood outfit and the jade hammer", 7422},

	-- Annihi II
	[12914] = {50006, "norseman(woman) outfit and ice rod", 7450},
	-- [12915] = {50006, "norseman(woman) outfit and littium arrow", 14211},
	[12916] = {50006, "norseman(woman) outfit and frozen hammer", 7775},
	[12917] = {50006, "norseman(woman) outfit and ice brand", 7767},
	[12918] = {50006, "norseman(woman) outfit and axe scarched", 7772},

	-- Nightmare / Necromancer Shield
	[12919] = {50007, "nightmare outfit and necromancer shield", 6433},
	[12920] = {50007, "nightmare outfit and nightmare shield", 6391},

	-- Demon OAK
	[12921] = {50010, "demonhunter outfit and rainbow hield", 8905},
	[12922] = {45784, "sais", 11306},
	[12923] = {45784, "talistan of dark mysteries", 11259},
	[12924] = {45784, "magic longsword", 2390},
	[12925] = {45784, "great axe", 2415},
	[12926] = {45784, "arcane staff", 2453},
	[12927] = {45784, "yols bow", 8856}
}

function onUse(cid,item,fromPosition,itemEx,toPosition)
local v = t[item.aid]
	if getPlayerStorageValue(cid,v[1]) == -1 and getPlayerFreeCap(cid) >= (getItemWeightById(v[3])) then
		setPlayerStorageValue(cid,v[1],1)
		doPlayerAddItem(cid,v[3])
		doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You have found a " .. v[2] .. "!")
	elseif getPlayerStorageValue(cid,v[1]) == 1 then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
	elseif getPlayerFreeCap(cid) < (getItemWeightById(v[3])) then
		doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You need " .. getItemWeightById(v[3]) .. ".00 oz in order to get the item")
	end

	return true
end
