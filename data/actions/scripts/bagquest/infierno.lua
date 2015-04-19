function onUse(cid, item, frompos, item2, topos)

        if item.uid == 10003 then -- the unique id of chest
		queststatus = getPlayerStorageValue(cid,10003) --storage value, keep at chests unique id
		if queststatus == -1 then -- checks if quest is done
			doPlayerSendTextMessage(cid,22,"You have found a bag") --Massage when open
			Container = doPlayerAddItem(cid, 1993, 1) -- container =bag or backpack ID
			doAddContainerItem(Container, 5909, 15) -- item
			doAddContainerItem(Container, 5910, 15) -- item
			doAddContainerItem(Container, 5911, 15) -- item
			doAddContainerItem(Container, 5912, 15) -- item
			doAddContainerItem(Container, 5913, 15) -- item
			doAddContainerItem(Container, 5914, 15) -- item
			setPlayerStorageValue(cid,10003,1) -- sets storage value up 1
		else
			doPlayerSendTextMessage(cid,22,"It is empty.")
		end
	return 1
	end
end
