-- Script Codeded by EliteDarkarai --
-- and Modified by ammin --

function getItemsInContainer(cont, sep)
	local text = ""
	local tsep = ""
	local count = ""
	for i=1, sep do
		tsep = tsep.."-"
	end
	tsep = tsep..">"
	for i=0, getContainerSize(cont.uid)-1 do
		local item = getContainerItem(cont.uid, i)
		if isContainer(item.uid) == false then
			if item.type > 0 then
				count = "("..item.type.."x)"
			end
			text = text.."\n"..tsep..getItemNameById(item.itemid).." "..count
		else
			if getContainerSize(item.uid) > 0 then
				text = text.."\n"..tsep..getItemNameById(item.itemid) 
				text = text..getItemsInContainer(item, sep+2)
			else
				text = text.."\n"..tsep..getItemNameById(item.itemid)
			end
		end
	end
	return text
end

function onSay(cid, words, param, channel)
	if(param == "") then
		doPlayerSendCancel(cid, "Command requires param.")
		return true
	end
	local slotName = {"Head Slot", "Amulet Slot", "Backpack Slot", "Armor Slot", "Right Hand", "Left Hand", "Legs Slot", "Feet Slot", "Ring Slot", "Ammo Slot"}
	local player = getPlayerByNameWildcard(param)
	if isPlayer(player) == true then
		local text = getPlayerName(player).."'s Equipment: "
		for i=1, 10 do
			text = text.."\n\n"
			local item = getPlayerSlotItem(player, i)
			if item.itemid > 0 then
				if isContainer(item.uid) == true then
					text = text..slotName[i]..": "..getItemNameById(item.itemid)..getItemsInContainer(item, 1)
				else
					text = text..slotName[i]..": "..getItemNameById(item.itemid)
				end
			else
				text = text..slotName[i]..": Empty"
			end
		end
		doShowTextDialog(cid, 6579, text)
	else
		doPlayerSendCancel(cid, "This player is not online.")
	end
	return true
end