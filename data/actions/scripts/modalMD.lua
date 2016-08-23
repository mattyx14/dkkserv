local mounts = {
	[1] = {name = "Widow Queen", ID = 1},
	[2] = {name = "Racing Bird", ID = 2},
	[3] = {name = "War Bear", ID = 3},
	[4] = {name = "Black Sheep", ID = 4},
	[5] = {name = "Midnight Panther", ID = 5},
	[6] = {name = "Draptor", ID = 6},
	[7] = {name = "Titanica", ID = 7},
	[8] = {name = "Tin Lizzard", ID = 8},
	[9] = {name = "Blazebringer", ID = 9},
	[10] = {name = "Rapid Boar", ID = 10},
	[11] = {name = "Stampor", ID = 11},
	[12] = {name = "Undead Cavebear", ID = 12},
	[13] = {name = "Donkey", ID = 13},
	[14] = {name = "Tiger Slug", ID = 14},
	[15] = {name = "Uniwheel", ID = 15},
	[16] = {name = "Crystal Wolf", ID = 16},
	[17] = {name = "Brown War Horse", ID = 17},
	[18] = {name = "Kingly Deer", ID = 18},
	[19] = {name = "Tamed Panda", ID = 19},
	[20] = {name = "Dromedary", ID = 20},
	[21] = {name = "King Scorpion", ID = 21},
	[22] = {name = "Rented Horse", ID = 22},
	[23] = {name = "Armoured War Horse", ID = 23},
	[24] = {name = "Shadow Draptor", ID = 24},
	[25] = {name = "Rented Horse", ID = 25},
	[26] = {name = "Rented Horse", ID = 26},
	[27] = {name = "Ladybug", ID = 27},
	[28] = {name = "Manta", ID = 28},
	[29] = {name = "Ironblight", ID = 29},
	[30] = {name = "Magma Crawler", ID = 30},
	[31] = {name = "Dragonling", ID = 31},
	[32] = {name = "Gnarlhound", ID = 32},
	[33] = {name = "Crimson Ray", ID = 33},
	[34] = {name = "Steelbeak", ID = 34},
	[35] = {name = "Water Buffalo", ID = 35},
	[36] = {name = "Armoured Scorpion", ID = 36},
	[37] = {name = "Armoured Dragonling", ID = 37},
	[38] = {name = "Armoured Cavebear", ID = 38},
	[39] = {name = "The Hellgrip", ID = 39},
	[40] = {name = "Lion", ID = 40},
	[41] = {name = "Golden Lion", ID = 41},
	[42] = {name = "Shock Head", ID = 42},
	[43] = {name = "Dominus Draptor", ID = 43},
	[44] = {name = "Walker", ID = 44},
	[45] = {name = "Azudocus", ID = 45},
	[46] = {name = "Carpacosaurus", ID = 46},
	[47] = {name = "Death Crawler", ID = 47},
	[48] = {name = "Flamesteed", ID = 48},
	[49] = {name = "Jade Lion", ID = 49},
	[50] = {name = "Jade Pincer", ID = 50},
	[51] = {name = "Nethersteed", ID = 51},
	[52] = {name = "Tempest", ID = 52},
	[53] = {name = "Winter King", ID = 53},
	[54] = {name = "Doombringer", ID = 54},
	[55] = {name = "Woodland Prince", ID = 55},
	[56] = {name = "Hailtorm Fury", ID = 56},
	[57] = {name = "Siegebreaker", ID = 57},
	[58] = {name = "Poisonbane", ID = 58},
	[59] = {name = "Blackpelt", ID = 59},
	[60] = {name = "Golden Dragonfly", ID = 60},
	[61] = {name = "Steel Bee", ID = 61},
	[62] = {name = "Copper Fly", ID = 62},
	[63] = {name = "Tundra Rambler", ID = 63},
	[64] = {name = "Highland Yak", ID = 64},
	[65] = {name = "Glacier Vagabond", ID = 65},
	[66] = {name = "Flying Divan", ID = 66},
	[67] = {name = "Magic Carpet", ID = 67},
	[68] = {name = "Floating Kashmir", ID = 68},
	[69] = {name = "Ringtail Waccoon", ID = 69},
	[70] = {name = "Night Waccoon", ID = 70},
	[71] = {name = "Emerald Waccoon", ID = 71},
	[72] = {name = "Glooth Glider", ID = 72},
	[73] = {name = "Shadow Hart", ID = 73},
	[74] = {name = "Black Stag", ID = 74},
	[75] = {name = "Emperor Deer", ID = 75},
	[76] = {name = "Flitterkatzen", ID = 76},
	[77] = {name = "Venompaw", ID = 77},
	[78] = {name = "Batcat", ID = 78},
	[79] = {name = "Sea Devil", ID = 79},
	[80] = {name = "Coralripper", ID = 80},
	[81] = {name = "Plumfish", ID = 81},
	[82] = {name = "Gorongra", ID = 82},
	[83] = {name = "Noctungra", ID = 83},
	[84] = {name = "Silverneck", ID = 84},
	[85] = {name = "Slagsnare", ID = 85},
	[86] = {name = "Nightstinger", ID = 86},
	[87] = {name = "Razorcreep", ID = 87},
	[88] = {name = "Rift Runner", ID = 88},
	[89] = {name = "Nightdweller", ID = 89},
	[90] = {name = "Frostflare", ID = 90},
	[91] = {name = "Cinderhoof", ID = 91},
	[92] = {name = "Moldpincer", ID = 92},
	[93] = {name = "Bloodcurl", ID = 93},
	[94] = {name = "Leafscuttler", ID = 94},
	[95] = {name = "Sparkion", ID = 95},
	[96] = {name = "Swamp Nnapper", ID = 96},
	[97] = {name = "Mould Shell ", ID = 97},
	[98] = {name = "Reed Lurker", ID = 98},
	[99] = {name = "Neon Sparkid", ID = 99},
	[100] = {name = "Vortexion", ID = 100},
}

function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	player:registerEvent("modalMD")
	local title = "Choose your mount!"
	local message = "You will receive the mount you select!"
	local window = ModalWindow(1001, title, message)
	if player:getItemCount(9019) >= 1 then
		window:addButton(100, "Confirm")
		window:setDefaultEnterButton(100)
	else
		window:setDefaultEnterButton(101)
	end
	window:addButton(101, "Cancel")
	window:setDefaultEscapeButton(101)

	for i = 1, #mounts do
		local o = mounts[i].name
		if not player:hasMount(mounts[i].ID) then
			window:addChoice(i, o)
		end
	end

	if window:getChoiceCount() == 0 then
		window:setMessage("You have all the mounts!")
	end

	window:sendToPlayer(player)
	return true
end
