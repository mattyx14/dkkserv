local CONFIG =
{
    [2146]={effect = CONST_ME_MAGIC_BLUE, text = 'Glub', color = 35, idshrine = {7508,7509,7510,7511}, enchant=7759, mana = 300, soul = 2}, -- Ice
    [2147]={effect = CONST_ME_MAGIC_RED, text = 'PFF', color = 183, idshrine = {7504,7505,7506,7507}, enchant=7760, mana = 300, soul = 2}, -- Fire
    [2149]={effect = CONST_ME_MAGIC_GREEN, text = 'Grr', color = 210, idshrine = {7516,7517,7518,7519}, enchant=7761, mana = 300, soul = 2}, -- Earth
    [2150]={effect = CONST_ME_MAGIC_BLUE, text = 'Bzz', color = 83, idshrine = {7512,7513,7514,7515}, enchant=7762, mana = 300, soul = 2} -- Energy
}


function onUse(cid, item, fromPosition, item2, topos)

    if CONFIG[item.itemid] == nil then
        return FALSE
    end
    if isInArray(CONFIG[item.itemid].idshrine, item2.itemid) == TRUE then
        if getPlayerMana(cid) >= CONFIG[item.itemid].mana then
            if getPlayerSoul(cid) >= CONFIG[item.itemid].soul then
                doPlayerAddSoul(cid,-CONFIG[item.itemid].soul)
                doPlayerAddMana(cid,-CONFIG[item.itemid].mana)
                doRemoveItem(item.uid,1)
                doPlayerAddItem(cid,CONFIG[item.itemid].enchant,1)
                doSendAnimatedText(topos,CONFIG[item.itemid].text,CONFIG[item.itemid].color)
                doSendMagicEffect(topos,CONFIG[item.itemid].effect)
            else
                doPlayerSendCancel(cid,"Voce nao tem soul suficiente")
            end
        else
            doPlayerSendCancel(cid,"Voce nao tem mana suficiente")
        end
    else
        return FALSE
    end
    return TRUE
end