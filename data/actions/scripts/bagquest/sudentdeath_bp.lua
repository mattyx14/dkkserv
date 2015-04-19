function onUse(cid, item, frompos, item2, topos)

        if item.uid == 10000 then -- the unique id of chest
		queststatus = getPlayerStorageValue(cid,10000) --storage value, keep at chests unique id
		if queststatus == -1 then -- checks if quest is done
			doPlayerSendTextMessage(cid,22,"You have found a bag") --Massage when open
			Container = doPlayerAddItem(cid, 15881, 1) -- container =bag or backpack ID
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			doAddContainerItem(Container, 2268, 50) -- item
			setPlayerStorageValue(cid,10000,1) -- sets storage value up 1
		else
			doPlayerSendTextMessage(cid,22,"It is empty.")
		end
	return 1
	end
end
