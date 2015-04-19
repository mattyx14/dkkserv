 
function getPlayerMoney(cid)
gold = getPlayerItemCount(cid,2148)
plat = getPlayerItemCount(cid,2152)*100
crys = getPlayerItemCount(cid,2160)*10000
money = gold + plat + crys
return money
end
local items = {
	["aol"] = {cash=50000, id=2173, amount=1},
	["food"] = {cash=10, id=2671, amount=5},
	["backpack"] = {cash=100, id=1988, amount=1}
} 
---------End Config ---------
function onSay(cid, words, param)
	local bitem = items[param]
	if (bitem ~= nil) then
		if getPlayerMoney(cid) >= bitem.cash then
			doPlayerAddItem(cid,bitem.id,bitem.amount)
			doPlayerRemoveMoney(cid,bitem.cash)
			doSendMagicEffect(getCreaturePosition(cid), 14)
		else
			doPlayerSendCancel(cid,"Sorry, you dont have enough money")
			doSendMagicEffect(getCreaturePosition(cid), 2)		
		end
	else
		doPlayerSendCancel(cid, "Invalid item.")  
		doSendMagicEffect(getCreaturePosition(cid), 2)			
	end
return 1
end