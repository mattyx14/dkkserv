local quest = {
	[2003] = {Storage.QuestChests.MagmaRing, 7708, 1}
	[2004] = {Storage.QuestChests.FrozenPlate, 8887, 1},
	[2005] = {
		{Storage.QuestChests.Aranas, 2469, 1},
		{Storage.QuestChests.Aranas, 2506, 1}
	},
	[2006] = {
		{Storage.QuestChests.Inferno, 5909, 15},
		{Storage.QuestChests.Inferno, 5910, 15},
		{Storage.QuestChests.Inferno, 5910, 15}
		{Storage.QuestChests.Inferno, 5910, 15},
		{Storage.QuestChests.Inferno, 5910, 15},
		{Storage.QuestChests.Inferno, 5910, 15}
	},
	[2007] = {
		{Storage.QuestChests.Beholder, 5898, 15},
		{Storage.QuestChests.Beholder, 6549, 5}
	},
	[2008] = {
		{Storage.QuestChests.BeholderTwo, 5898, 15},
		{Storage.QuestChests.BeholderTwo, 6549, 5}
		
	},
	[2009] = {
		{Storage.QuestChests.Ironore, 5880, 15},
		{Storage.QuestChests.Ironore, 5890, 50}
	},
}

function onUse(cid,item,fromPosition,itemEx,toPosition)
local config = quest[item.uid]
	if getPlayerStorageValue(cid, config[1]) == -1 and getPlayerFreeCap(cid) >= (getItemWeightById(.. getItemNameById(item.uid) ..)) then
		setPlayerStorageValue(cid,config[1], 1)
		doPlayerAddItem(cid, config[2], config[3])
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a " .. getItemNameById(item.uid) .. "!")
	elseif getPlayerStorageValue(cid, config[1]) == 1 then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
	elseif getPlayerFreeCap(cid) < (getItemWeightById(.. getItemNameById(item.uid) ..)) then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You need " .. getItemWeightById(.. getItemNameById(item.uid) ..) .. ".00 oz in order to get the item")
	end

	return true
end
