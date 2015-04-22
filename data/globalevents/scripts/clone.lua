local ids = { -- ADD ID Items to protect with serial
	6579, 2196
}

local search = '('
for k, v in ipairs(ids) do
	search = search .. v .. ((k < #ids) and ',' or ')')
end

function onStartup()
	local items, indexer = {}, {}
	local res = db.getResult("SELECT `serial` FROM `player_items` WHERE `serial` != 0 AND `itemtype` IN " .. search .. ";")
	if (res:getID() ~= -1) then
		while true do
			local serial = res:getDataInt("serial")
			if not isInArray(indexer, serial) then
				table.insert(indexer, serial)
			end	
			items[serial] = ((items[serial] == nil) and 1 or items[serial] + 1)
			if not res:next() then
				break
			end
		end
		res:free()
	end

	local res = db.getResult("SELECT `serial` FROM `player_depotitems` WHERE `serial` != 0 AND `itemtype` IN " .. search .. ";")
	if (res:getID() ~= -1) then
		while true do
			local serial = res:getDataInt("serial")
			if not isInArray(indexer, serial) then
				table.insert(indexer, serial)
			end	
			items[serial] = ((items[serial] == nil) and 1 or items[serial] + 1)
			if not res:next() then
				break
			end
		end
		res:free()
	end

	local res = db.getResult("SELECT `serial` FROM `tile_items` WHERE `serial` != 0 AND `itemtype` IN " .. search .. ";")
	if (res:getID() ~= -1) then
		while true do
			local serial = res:getDataInt("serial")
			if not isInArray(indexer, serial) then
				table.insert(indexer, serial)
			end	
			items[serial] = ((items[serial] == nil) and 1 or items[serial] + 1)
			if not res:next() then
				break
			end
		end
		res:free()
	end

	local function scanContainer(uid, aid)
		for k = (getContainerSize(uid) - 1), 0, -1 do
			local tmp = getContainerItem(uid, k)
			if (tmp.actionid == aid) and isInArray(ids, tmp.itemid) then
				doRemoveItem(tmp.uid)
			elseif isContainer(tmp.uid) then
				scanContainer(tmp.uid, aid)
			end
		end
	end

	local function deleteFromTiles(aid)
		local res = db.getResult("SELECT tid.x AS x, tid.y AS y, tid.z AS z FROM `tile_items` AS ti INNER JOIN `tiles` AS tid ON tid.id = ti.tile_id WHERE ti.serial = " .. aid .. " AND `itemtype` IN " .. search .. ";")
		if (res:getID() ~= -1) then
			while true do
				local posx, posy, posz = res:getDataInt('x'), res:getDataInt('y'), res:getDataInt('z')
				local pos = {x = posx, y = posy, z = posz}
				for i = 0, getTileInfo(pos).items do
					pos.stackpos = i
					local t = getTileThingByPos(pos)
					if (t.itemid > 0) and (t.actionid == aid) and isInArray(ids, t.itemid) then
						doRemoveItem(t.uid)
					elseif (isContainer(t.uid)) then
						scanContainer(t.uid, aid)
					end
				end
				if not res:next() then
					break
				end
			end
			res:free()
		end
	end

	for _, i in ipairs (indexer) do
		local this = {cid = -1, tid = -1}
		if (items[i] > 1) then
			db.executeQuery("DELETE FROM `player_depotitems` WHERE `serial` = " .. i .. " AND `itemtype` IN " .. search .. ";")
			db.executeQuery("DELETE FROM `player_items` WHERE `serial` = " .. i .. " AND `itemtype` IN " .. search .. ";")
			deleteFromTiles(i)

			local res = db.getResult("SELECT z.itemid AS tid, p.id AS cid FROM `z_shop_history_2` AS z INNER JOIN `players` AS p ON p.name = z.p_name WHERE z.item_aid = " .. i .. ";")
			if (res:getID() ~= -1) then
				this.cid = res:getDataInt('cid')
				this.tid = res:getDataInt('tid')
				res:free()
			end

			if (this.cid ~= -1) and (this.tid ~= -1) then
				local res = db.getResult("SELECT `sid`, `pid`  FROM `player_depotitems` WHERE `player_id` = " .. this.cid .. " ORDER BY `sid` DESC LIMIT 1;")
				if (res:getID() ~= -1) then
					db.executeQuery("INSERT INTO `player_depotitems` (`player_id`, `sid`, `pid`, `itemtype`, `count`, `serial`) VALUES (" .. this.cid .. ", " .. (res:getDataInt('sid') + 1) .. ", " .. res:getDataInt('pid') .. ", " .. this.tid .. ", 1, " .. i .. ");")
					res:free()
				end
			end
			doWriteLogFile("data/logs/dupe.txt", "Deleted item with serial " .. i .. " found " .. items[i] .. ", added to " .. this.cid .. " id ->" .. this.tid)
		end
	end

	return true
end
