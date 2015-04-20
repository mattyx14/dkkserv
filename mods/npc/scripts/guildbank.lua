function getGuildBalance(id)
	local query = db.getResult("select balance from guilds where id = " .. id .. ";")
	if query:getID() ~= -1 then
		return query:getDataInt("balance")
	end
	return LUA_ERROR
end

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)                          npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)                       npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)                  npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                                      npcHandler:onThink() end

local money = 0
function creatureSayCallback(cid, type, msg)

	if(not npcHandler:isFocused(cid)) then
		return false
	end
	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_PRIVATE and 0 or cid
	if msgcontains(msg, "balance") then
		if getPlayerGuildId(cid) < 1 then
			selfSay("You don't have any guild.", cid)
		else
			selfSay("The balance for the guild " .. getPlayerGuildName(cid) .. " is " .. getGuildBalance(getPlayerGuildId(cid)) .. " gold coins.", cid)
			talkState[talkUser] = 0
		end
	elseif msgcontains(msg, "deposit") then
		if getPlayerGuildId(cid) < 1 then
			selfSay("You don't have any guild.", cid)
		else
			selfSay("How much money do you want deposit to your guild balance?", cid)
			talkState[talkUser] = 1
		end
	elseif talkState[talkUser] == 1 then
		if not tonumber(msg) or tonumber(msg) < 1 then
			selfSay("Please tell me how much do you want to deposit to your guild's balance?", cid)
		end

		money = math.abs(tonumber(msg))
		selfSay("Are you sure that do you want to deposit " .. money .. " gold coins to your guild's balance?", cid)
		talkState[talkUser] = 2
	elseif msgcontains(msg, "yes") and talkState[talkUser] == 2 then
		if getPlayerGuildId(cid) < 1 then
			selfSay("You don't have any guild.", cid)
		else
			if getPlayerMoney(cid) >= money then
				local query = db.executeQuery("update guilds set balance = balance + " .. money .. " where id = " .. getPlayerGuildId(cid) .. ";")
				if query ~= LUA_ERROR then
					selfSay("You have deposited " .. money .. " gold coins to your guild's balance.", cid)
					doPlayerRemoveMoney(cid, money)
					talkState[talkUser] = 0
				else
					selfSay("Money can not be deposited, please contact a gamemaster.", cid)
					error("[Error::Query] " .. query .. ", error while trying to add a value into balance.")
					talkState[talkUser] = 0
				end
			else
				selfSay("Sorry, you don't have the money.", cid)
				talkState[talkUser] = 0
			end
		end
	elseif msgcontains(msg, "withdraw") then
		if getPlayerGuildId(cid) < 1 then
			selfSay("You don't have any guild.", cid)
		else
			selfSay("How much money do you want to withdraw from your guild's balance?", cid)
			talkState[talkUser] = 3
		end
	elseif talkState[talkUser] == 3 then
		if not tonumber(msg) or tonumber(msg) < 1 then
			selfSay("Please tell me how much do you want to withdraw from your guild's balance?", cid)
		end

		money = math.abs(tonumber(msg))
		selfSay("Are you sure that do you want to withdraw " .. money .. " gold coins from your guild's balance?", cid)
		talkState[talkUser] = 4
	elseif msgcontains(msg, "yes") and talkState[talkUser] == 4 then
		if getPlayerGuildId(cid) < 1 then
			selfSay("You don't have any guild.", cid)
		else
			if getGuildBalance(getPlayerGuildId(cid)) >= money then
				local query = db.executeQuery("update guilds set balance = (balance - " .. money.. ") where id = " .. getPlayerGuildId(cid) .. ";")
				if query then
					selfSay("You withdraw " .. money .. " gold coins from your guild's balance.", cid)
					doPlayerAddMoney(cid, money)
					talkState[talkUser] = 0
				else
					selfSay("Money can not be retired, please contact a gamemaster.", cid)
					error("[Error::Query] " .. query .. ", error while trying to remove a value from balance.")
					talkState[talkUser] = 0
				end
			else
				selfSay("Sorry, your guild don't have the money in the balance.", cid)
				talkState[talkUser] = 0
			end
		end
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())