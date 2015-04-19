local talk_state = {}

local function getCount(msg)
    local ret = -1
    local b, e = string.find(msg, "%d+")
    if b ~= nil and e ~= nil then
       ret = tonumber(string.sub(msg, b, e))
    end
 
    return ret
end

local function msgcontains(message, keyword)
    local a, b = string.find(message, keyword)
    if a == nil or b == nil then
        return false
    end
    return true
end

local function addCoin(cid, itemid, count)
    if count > 100 then
        while(count > 100) do
            cash = doCreateItemEx(itemid, 100)
            doPlayerAddItemEx(cid, cash, 1)
            count = count - 100
        end
    end
    if count > 0 then
        cash = doCreateItemEx(itemid, count)
        doPlayerAddItemEx(cid, cash, 1)
    end
end

local function doPlayerExist(name)
    local result = db.getResult("SELECT `name` FROM `players` WHERE `name` = " .. db.escapeString(name))
    if (result:getID() ~= -1) then
        local return_name = result:getDataString("name")
        result:free()
    return return_name
    end
    return 0
end

GOLD_COIN = 2148
PLATINUM_COIN = 2152
CRYSTAL_COIN = 2160

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)             end
function onCreatureDisappear(cid)
    talk_state[cid] = 0
    npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)         npcHandler:onCreatureSay(cid, type, msg)     end
function onThink()                             npcHandler:onThink()                         end

npcHandler:setMessage(MESSAGE_GREET, "Greetings |PLAYERNAME|. I'm banker.")

last_count = {}
last_name = {}
function creatureSayCallback(cid, type, msg)
    orginal_msg = msg
    msg = string.lower(msg)
    if(not npcHandler:isFocused(cid)) then
    talk_state[cid] = 0
        return false
    end
    if talk_state[cid] == nil then
        talk_state[cid] = 0
        last_count[cid] = 0
        last_name[cid] = ""
    end
    -- select action
    if msgcontains(msg, 'change') and talk_state[cid] ~= 41 then
        talk_state[cid] = 10
        npcHandler:say('We exchange gold, platinum and crystal coins.', cid)
    elseif msgcontains(msg, 'balance') and talk_state[cid] ~= 41 then
        talk_state[cid] = 0
        local balance = getPlayerBalance(cid)
        if balance == 0 then
            npcHandler:say('Your bank account is empty.', cid)
        elseif balance <= 100000 then
            npcHandler:say('Your account balance is ' .. balance .. ' gold coins.', cid)
        elseif balance <= 1000000 then
            npcHandler:say('Your account balance is ' .. balance .. ' gold coins.', cid)
        else 
            npcHandler:say('Your account balance is ' .. balance .. ' gold coins.', cid)
        end
    elseif msgcontains(msg, 'deposit') and talk_state[cid] ~= 41 then
        talk_state[cid] = 20
        npcHandler:say('How much gold you would like to deposit?', cid)
    elseif msgcontains(msg, 'withdraw') and talk_state[cid] ~= 41 then
        talk_state[cid] = 30
        npcHandler:say('How much gold you would like to withdraw?', cid)
    elseif msgcontains(msg, 'transfer') and talk_state[cid] ~= 41 then
        talk_state[cid] = 40
        npcHandler:say('How much gold you would like to transfer?', cid)
    end
    --  change
    if talk_state[cid] == 10 then
        if msgcontains(msg, 'platinum') then
            talk_state[cid] = 12
            npcHandler:say('Do you want to change your platinum coins to gold or crystal?', cid)
        elseif msgcontains(msg, 'gold') then
            talk_state[cid] = 11
            npcHandler:say('How many platinum coins do you want to get?', cid)
        elseif msgcontains(msg, 'crystal') then
            talk_state[cid] = 13
            npcHandler:say('How many crystal coins do you want to change to platinum?', cid)
        end
    end
    if talk_state[cid] >= 11 and talk_state[cid] <= 13 then
        if talk_state[cid] == 11 and getCount(msg) > 0 then
            talk_state[cid] = 14
            last_count[cid] = getCount(msg)
            npcHandler:say('So I should change ' .. getCount(msg) * 100 .. ' of your gold coins to ' .. getCount(msg) .. ' platinum coins for you?', cid)
        elseif talk_state[cid] == 12 then
            if msgcontains(msg, 'gold') then
                talk_state[cid] = 15
                npcHandler:say('How many platinum coins do you want to change to gold?', cid)
            elseif msgcontains(msg, 'crystal') then
                talk_state[cid] = 16
                npcHandler:say('How many crystal coins do you want to get?', cid)
            end
        elseif talk_state[cid] == 13 and getCount(msg) > 0 then
            talk_state[cid] = 17
            last_count[cid] = getCount(msg)
            npcHandler:say('So I should change ' .. getCount(msg) .. ' of your crystal coins to ' .. getCount(msg)*100 .. ' platinum coins for you?', cid)
        end
    end
    if talk_state[cid] >= 14 and talk_state[cid] <= 17 then
        if talk_state[cid] == 14 and getCount(msg) <= 0 then
            if msgcontains(msg, 'yes') then
                if math.floor(getPlayerItemCount(cid, GOLD_COIN) / 100) >= last_count[cid] then
                    doPlayerRemoveItem(cid, GOLD_COIN, last_count[cid] * 100)
                    addCoin(cid, PLATINUM_COIN, last_count[cid])
                    npcHandler:say('Here you are.', cid)
                else
                    npcHandler:say('You don\'t have ' .. last_count[cid] * 100 .. ' gold coins.', cid)
                end
            else
                npcHandler:say('Well, can I help you with something else?', cid)
            end
            talk_state[cid] = 0
        elseif talk_state[cid] == 15 and getCount(msg) > 0 then
            talk_state[cid] = 18
            last_count[cid] = getCount(msg)
            npcHandler:say('So I should change ' .. getCount(msg) .. ' of your platinum coins to ' .. getCount(msg) * 100 .. ' gold coins for you?', cid)
        elseif talk_state[cid] == 16 and getCount(msg) > 0 then
            talk_state[cid] = 19
            last_count[cid] = getCount(msg)
            npcHandler:say('So I should change ' .. getCount(msg) * 100 .. ' of your platinum coins to ' .. getCount(msg) .. ' crystal coins for you?', cid)
        elseif talk_state[cid] == 17 and getCount(msg) <= 0 then
            if msgcontains(msg, 'yes') then
                if getPlayerItemCount(cid, CRYSTAL_COIN) >= last_count[cid] then
                    doPlayerRemoveItem(cid, CRYSTAL_COIN, last_count[cid])
                    addCoin(cid, PLATINUM_COIN, last_count[cid] * 100)
                    npcHandler:say('Here you are.', cid)
                else
                    npcHandler:say('You don\'t have ' .. last_count[cid] .. ' crystal coins.', cid)
                end
            else
                npcHandler:say('Well, can I help you with something else?', cid)
            end
            talk_state[cid] = 0
        end
    end
    if talk_state[cid] >= 18 and talk_state[cid] <= 19 then
        if talk_state[cid] == 18 and getCount(msg) <= 0 then
            if msgcontains(msg, 'yes') then
                print(2)
                if getPlayerItemCount(cid, PLATINUM_COIN) >= last_count[cid] then
                    doPlayerRemoveItem(cid, PLATINUM_COIN, last_count[cid])
                    addCoin(cid, GOLD_COIN, last_count[cid] * 100)
                    npcHandler:say('Here you are.', cid)
                else
                    npcHandler:say('You don\'t have ' .. last_count[cid] .. ' platinum coins.', cid)
                end
            else
                npcHandler:say('Well, can I help you with something else?', cid)
            end
            talk_state[cid] = 0
        elseif talk_state[cid] == 19 and getCount(msg) <= 0 then
            if msgcontains(msg, 'yes') then
                if math.floor(getPlayerItemCount(cid, PLATINUM_COIN) / 100) >= last_count[cid] then
                    doPlayerRemoveItem(cid, PLATINUM_COIN, last_count[cid] * 100)
                    addCoin(cid, CRYSTAL_COIN, last_count[cid])
                    npcHandler:say('Here you are.', cid)
                else
                    npcHandler:say('You don\'t have ' .. last_count[cid] * 100 .. ' platinum coins.', cid)
                end
            else
                npcHandler:say('Well, can I help you with something else?', cid)
            end
            talk_state[cid] = 0
        end
    end
    --deposit
    if talk_state[cid] == 20 and getCount(msg) > 0 then
        talk_state[cid] = 21
        last_count[cid] = getCount(msg)
        npcHandler:say('Would you really like to deposit ' .. last_count[cid] .. ' gold coins?', cid)
    elseif talk_state[cid] == 20 and msgcontains(msg, 'all') then
        if getPlayerMoney(cid) <= 0 then
            talk_state[cid] = 0
            npcHandler:say('You don\'t have any money.', cid)
        else
            talk_state[cid] = 21
            last_count[cid] = getPlayerMoney(cid)
            npcHandler:say('Would you really like to deposit your all money, ' .. last_count[cid] .. ' gold coins?', cid)
        end
    elseif talk_state[cid] == 21 and getCount(msg) <= 0 then
        if msgcontains(msg, 'yes') then
            if doPlayerDepositMoney(cid, last_count[cid]) == TRUE then
                npcHandler:say('You deposited ' .. last_count[cid] .. ' gold coins. Now your account balance is ' .. getPlayerBalance(cid) .. ' gold coins.', cid)
            else
                npcHandler:say('You don\'t have ' .. last_count[cid] .. ' gold coins.', cid)
            end
        else
            npcHandler:say('Well, can I help you with something else?', cid)
        end
        talk_state[cid] = 0
    end
    --withdraw
    if talk_state[cid] == 30 and getCount(msg) > 0 then
        talk_state[cid] = 31
        last_count[cid] = getCount(msg)
        npcHandler:say('Would you really like to withdraw ' .. last_count[cid] .. ' gold coins?', cid)
    elseif talk_state[cid] == 30 and msgcontains(msg, 'all') then
            talk_state[cid] = 31
            last_count[cid] = getPlayerBalance(cid)
            npcHandler:say('Would you really like to withdraw your all money, ' .. last_count[cid] .. ' gold coins?', cid)
    elseif talk_state[cid] == 31 and getCount(msg) <= 0 then
        if msgcontains(msg, 'yes') then
            if doPlayerWithdrawMoney(cid, last_count[cid]) == TRUE then
                npcHandler:say('You withdrawed ' .. last_count[cid] .. ' gold coins. Now your account balance is ' .. getPlayerBalance(cid) .. ' gold coins.', cid)
            else
                npcHandler:say('You don\'t have ' .. last_count[cid] .. ' gold coins on your account. You account balance is ' .. getPlayerBalance(cid) .. '.', cid)
            end
            talk_state[cid] = 0
        else
            npcHandler:say('Well, can I help you with something else?', cid)
        end
        talk_state[cid] = 0
    end
    -- transfer
    if talk_state[cid] == 40 and getCount(msg) > 0 then
        if getPlayerBalance(cid) >= getCount(msg) then
            talk_state[cid] = 41
            last_count[cid] = getCount(msg)
            npcHandler:say('To who would you like transfer ' .. last_count[cid] .. ' gold coins from your account? Tell me his or her name.', cid)
        else
            talk_state[cid] = 0
            npcHandler:say('You don\'t have ' .. getCount(msg) .. ' gold coins on your account.', cid)
        end
    elseif talk_state[cid] == 41 then
        local toPlayer = doPlayerExist(msg)
        if toPlayer ~= 0 then
            last_name[cid] = toPlayer
            talk_state[cid] = 42
            npcHandler:say('So you would like to transfer ' .. last_count[cid] .. ' gold coins to ' .. last_name[cid] .. '?', cid)
        else
            talk_state[cid] = 0
            npcHandler:say('I don\'t know player with name ' .. orginal_msg .. '.', cid)
        end
    elseif talk_state[cid] == 42 then
        if msgcontains(msg, 'yes') then
            if doPlayerTransferMoneyTo(cid, last_name[cid], last_count[cid]) == TRUE then
                npcHandler:say('You have transfered ' .. last_count[cid] .. ' gold coins to bank account of player ' .. last_name[cid] .. '. Now your account balance is ' .. getPlayerBalance(cid) .. '.', cid)
            else
                npcHandler:say('You don\'t have ' .. last_count[cid] .. ' gold coins on your bank account or player with name ' .. last_name[cid] .. ' doesn\'t exist. Money not transfered.', cid)
                last_name[cid] = ""
            end
        else
            npcHandler:say('Well, can I help you with something else?', cid)
        end
        talk_state[cid] = 0
    end
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())  