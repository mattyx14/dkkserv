function onUse(cid, item, frompos, item2, topos)

        if item.uid == 2024 then -- the unique id of chest
		queststatus = getPlayerStorageValue(cid,2024) --storage value, keep at chests unique id
		if queststatus == -1 then -- checks if quest is done
			doPlayerSendTextMessage(cid,22,"You have found a bag") --Massage when open
			Container = doPlayerAddItem(cid, 1993, 1) -- container =bag or backpack ID
			doAddContainerItem(Container, 2427, 1) -- item
			doAddContainerItem(Container, 2171, 1) -- item
			setPlayerStorageValue(cid,2024,1) -- sets storage value up 1
		else
			doPlayerSendTextMessage(cid,22,"It is empty.")
		end
	return 1
	end
end
