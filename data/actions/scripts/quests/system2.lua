local quest = {
	[2003] = {Storage.QuestChests.MagmaRing, 7708, 1},
	[2004] = {Storage.QuestChests.FrozenPlate, 8887, 1},
	[2005] = {
		{Storage.QuestChests.Aranas, 2469, 1},
		{Storage.QuestChests.Aranas, 2506, 1}
	},
	[2006] = {
		{Storage.QuestChests.Inferno, 5909, 15},
		{Storage.QuestChests.Inferno, 5910, 15},
		{Storage.QuestChests.Inferno, 5910, 15},
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
	[2012] = {
		{Storage.JesterOutfit, 7957, 1},
		{Storage.JesterOutfit, 7958, 1}
	},
	[2013] = {
		{Storage.NomadOutfit, 5917, 1}
	},
	[2014] = {
		{Storage.PirateOutfit, 6096, 1}
	},
	[2015] = {
		{Storage.ShamanOutfit, 3961, 1},
		{Storage.ShamanOutfit, 2501, 1},
		{Storage.ShamanOutfit, 3982, 1}
	},
	[2016] = {
		{Storage.YalaharianOutfit, 9776, 1},
		{Storage.YalaharianOutfit, 9777, 1},
		{Storage.YalaharianOutfit, 9778, 1}
	}
	--[[
	[] = {
		{},
		{}
	}
	]]
}

function onUse(cid,item,fromPosition,itemEx,toPosition)
	if(getBooleanFromString(getConfigValue('enableProtectionQuestForGM'))) then
		if(getPlayerCustomFlagValue(cid, PLAYERCUSTOMFLAG_GAMEMASTERPRIVILEGES)) then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF, cid)
			return true
		end
	end

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
