local TODO = {2672, 2173, 1988, 2273, 2268, 2261, 7620, 7589, 7590, 7618, 7588, 7591}
local items = {
	[1] = {buy=120, sell=75}, --dragon ham
	[2] = {buy=50000, sell=10000}, --AOL
	[3] = {buy=20, sell=3}, --BP
	[4] = {buy=200, sell=50}, --UH
	[5] = {buy=400, sell=90}, --SD
	[6] = {buy=100, sell=50}, --destroy field
	[7] = {buy=50, sell=25}, --MP
	[8] = {buy=90, sell=40}, --SPM
	[9] = {buy=130, sell=60}, --GMP
	[10] = {buy=50, sell=20}, --HP
	[11] = {buy=110, sell=50}, --SHP
	[12] = {buy=200, sell=90} --GHP
			}
function onSay(cid, words, param)
	if words == "!buy" then
		local I = 0
		local commapos = string.find(param,",")
		if commapos ~= nil then
			item = string.sub(param,1,commapos-1)
			count = tonumber(string.sub(param, commapos+1, string.len(param)))
		elseif commapos == nil then
			item = param
			count = 1
		end
		if count == nil then
			count = 1
		elseif count > 100 then
			count = 100
		end
		for i = 1, #TODO do
			if item == getItemNameById(TODO[i]) then
				I = i
			end
		end
		local new = items[i]
		if new ~= nil then
			if isItemRune(TODO[i]) == TRUE and count > 10 then
				count = 10
				doPlayerSendCancel(cid,"Max. charges for runes is 10.")
			end
			if doPlayerRemoveMoney(cid,(new.buy)*count) == TRUE then
				if isItemStackable(TODO[i]) == TRUE or isItemRune(TODO[i]) == TRUE then
					doPlayerAddItem(cid,TODO[i],count)
				else
					for x = 1, count do
						doPlayerAddItem(cid,TODO[i],1)
					end
				end
				if count > 1 then
					doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have bought "..count.." "..getItemNameById(TODO[i]).."s for "..new.buy*count.." gps.")
				else
					doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have bought "..count.." "..getItemNameById(TODO[i]).." for "..new.buy*count.." gps.")
				end
			else
				doPlayerSendCancel(cid,"You don\´t have enough money to bue ".. count .." "..  getItemNameById(TODO[i]) ..".")
			end
		else
			doPlayerSendCancel(cid,"This item is not in the list, please use !list to see valid items.")
		end
	--NOT READY, BECAUSE I DONT NEED IT ~.
	--elseif words == "!sell" then
	--	new = items[item]
	--	if new ~= nil then
	--		if getPlayerItemCount(cid,new.id) >= count then
	--			doPlayerRemoveItem(cid,new.id,count)
	--			doPlayerAddMoney(cid,(new.sell)*count)
	--		else
	--			doPlayerSendCancel(cid,"You don't have enough ".. item .." to sell them.")
	--		end
	--	else
	--		doPlayerSendCancel(cid,"That item is not in the list.")
	--	end
	--AUTO-GENERATION OF THE LIST.
	elseif words == "!list" then
		text = "<--List of valid items-->"
		line = "\n"
		for o = 1, #TODO do
			text = text .. line .. "-"..getItemNameById(TODO[o])..", Precio por unidad = "..items[o].buy..""
		end
		doPlayerPopupFYI(cid, text)
	end
	return TRUE
end
 
 