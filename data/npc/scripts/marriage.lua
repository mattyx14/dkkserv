local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
 
-- OTServ event handling functions start
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)     npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                         npcHandler:onThink() end
-- OTServ event handling functions end
 
function creatureSayCallback(cid, type, msg)
    -- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
    if(npcHandler.focus ~= cid) then
        return false
    end
 
        if msgcontains(msg, 'Marriage') or msgcontains(msg, 'marri') or msgcontains(msg, 'marry') or msgcontains(msg, 'gay couple') then
            selfSay('Would you like to get married to the woman next by your side?')
        elseif msgcontains(msg, 'yes') or msgcontains(msg, 'yeah') or msgcontains(msg, 'bride') or msgcontains(msg, 'gay') then
            selfSay('Are you sure you want to get married to this person?')
            talk_state = 1
 
 
        elseif msgcontains(msg, 'Pretty sure') and talk_state == 1 then
                selfSay('Fine! I know pronounce you husband and wife, You may kiss her and give her the ring.')
                    doPlayerAddItem(cid,2121,2)
 
        elseif msgcontains(msg, 'no') and (talk_state >= 1 and talk_state <= 2) then
            selfSay('See? You made the bride cry!')
            talk_state = 0
        end
    -- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
    return true
end
 
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())