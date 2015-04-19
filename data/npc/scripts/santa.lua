random_items = {
{10,2112,1},   -- 1% to get teddy bear
{10,2196,1},   -- 1% to get rare amulet
{20,6512,1},   -- 2% to get santa doll
{40,2114,1},   -- 4% to get piggy bank
{80,2111,5},   -- 8% to get 5 snowballs
{80,2688,8},   -- 8% to get 8 candy canes
{80,2110,1},   -- 8% to get doll
{200,2178,1},  -- 20% to get carbon
{400,2674,15}, -- 40% to get 15 red apples
{450,2675,10}, -- 45% to get 10 oranges
{1000,2687,8}  -- 100% to get 8 cookies
}
PRESENT_STORAGE = 54164 -- storage ID



local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)             end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)         npcHandler:onCreatureSay(cid, type, msg)     end
function onThink()                             npcHandler:onThink()                         end

function santaNPC(cid, message, keywords, parameters, node)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
    if (parameters.present == true) then
        if (getPlayerStorageValue(cid, PRESENT_STORAGE) < 1) then
            local item = {}
            local reward = 0
            local count = ""
            for i = 1, #random_items do
                item = random_items[i]
                if (math.random(0,999) < item[1]) then
                    reward = item[2]
                    subType = item[3]
                    if subType > 1 then
                        count = subType .. " "
                    end
                    break
                end
            end
            doPlayerAddItem(cid, reward, subType)
            setPlayerStorageValue(cid, PRESENT_STORAGE, 1)
            npcHandler:say('HO HO HO! You were good like a little dwarf this year! I got ' .. count .. getItemNameById(reward) .. ' for you.', cid)
        else
            npcHandler:say('I gave you a present already.', cid)
        end
    else
        npcHandler:say('Come back when you start behaving good.', cid)
    end
    npcHandler:resetNpc()
    return true
end
 
npcHandler:setMessage(MESSAGE_GREET, "Merry Christmas |PLAYERNAME|. I'm Santa Claus. I got {present} for good children.")

local noNode = KeywordNode:new({'no'}, santaNPC, {present = false})
local yesNode = KeywordNode:new({'yes'}, santaNPC, {present = true})

local node = keywordHandler:addKeyword({'pre'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Were you good this year?'})
    node:addChildKeywordNode(yesNode)
    node:addChildKeywordNode(noNode)
npcHandler:addModule(FocusModule:new()) 