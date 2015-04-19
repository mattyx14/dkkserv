local timeToRemove = 10 --Minutes ~
local itemID = 2196
local msg = "Double Experience"
local msg30 = "You have to be level 30 or higher"
local msgLost = "The amulet has been destroyed"

--Do no edit if you dont know what it does ~
local Interval = 1 --interval to check the time, minutes.
local Slot = 2

function CheckItemTime(x)
    local Item = getPlayerSlotItem(x.cid, Slot)
    if Item.itemid == itemID then
        if Item.actionid > 1000 then
            addEvent(CheckItemTime, Interval * 60 * 1000, {cid=x.cid})
            doSetItemActionId(Item.uid, Item.actionid - 1)
            doSetItemSpecialDescription(Item.uid, "It have energy for "..(Item.actionid - 1) - 1000 .." minutes left.")
        else
            doPlayerSetExpRateRate(x.cid, 0)
            doCreatureSay(x.cid, msgLost, TALKTYPE_ORANGE_1)
            doRemoveItem(Item.uid)
        end    
    end
end

function onEquip(cid, item, slot)
    if item.actionid == 0 then
        doSetItemActionId(item.uid, timeToRemove + 1000)
    end
    if item.itemid == itemID and getPlayerLevel(cid) >= 30 then
        doCreatureSay(cid, msg, TALKTYPE_ORANGE_1)
        doPlayerSetExpRate(cid, 1)
        addEvent(CheckRingTime, Interval * 60 * 1000, {cid=cid})
    else
        doCreatureSay(cid, msg30, TALKTYPE_ORANGE_1)
    end
end

function onDeEquip(cid, item, slot)
    doPlayerSetExpRate(cid, 0)
end  