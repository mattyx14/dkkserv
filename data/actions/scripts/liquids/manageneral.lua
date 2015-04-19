--Made by OsoSangre
--Created to make the script easy to manipulate
--If used without using server potion exhaust (EX: potExhaust = false), it will work regardless of server
--Remember, true = yes, false = no, in the config

function onUse(cid, item, frompos, item2, topos)
    --Config
    local reqml = 3         --Magic Level required to use it
    local reqlvl = 15       --Character Level required to use it
    local potExhaust = false    -- causes exhaust like potions (false creates seperate exhaust for mana rune)
    local minMana = 150     --Minimum amount of mana to be added
    local maxMana = 300         --Maximum amount of mana to be added
    local ani = 1           --Animation to be sent to player when used (these can be found in your global.lua; search for CONST_ME_)
    --If you don't want it to give health, set both to 0
    local minHealth = 150       --Minimum amount of health to be added
    local maxHealth = 300       --Maximum amount of health to be added
    --If you're not using potion exhaust (potExhaust = false) edit the following the way you'd like
    local storeValue = 50       --The storage value that will be used for exhaust if you have potexhaust to false
    local exhaustTime = 1       --Exhaust in seconds
    local infinite = false      --Will it cause rune to lose charges

    local player_say = "Ahhh..."                            --What player says after successfully using the mana rune
    local error_ml = "You don't have the required magic level to use that rune."    --What the cancel says when ml is too low
    local error_lvl = "You don't have the required magic level to use that rune."   --What the cancel says when level is too low
    local error_notPlayer = "You can only use this rune on players."        --What the cancel says when you try to use it on something not a player
    local error_exhaust = "You are exhausted."                  --What the cancel says when you are exhausted

    ------------------------------------------- DO NOT EDIT BELOW THIS LINE!! -------------------------------------------

    ---------------------------START Check for Errors--------------------------------
    --If not high enough level, send poof and cancel message
    if getPlayerLevel(cid) < reqlvl then
        doSendMagicEffect(frompos, CONST_ME_POFF)
        doPlayerSendCancel(cid, error_lvl)
        return 0
    end

    --If ml is too low, send poof and cancel message
    if getPlayerMagLevel(cid) < reqml then
        doSendMagicEffect(frompos, CONST_ME_POFF)
        doPlayerSendCancel(cid, error_ml)
        return 0
    end

    --If it's not a player, send poof and cancel message
    if item2.uid < 1 then
        doSendMagicEffect(frompos, CONST_ME_POFF)
        doPlayerSendCancel(cid, error_notPlayer)
        return 0
    end

    --Check if exhausted
    if potExhaust == false then --If not using Potion Exhaust
        if exhaust(cid, storeValue, exhaustTime) == 0 then
            doSendMagicEffect(frompos, CONST_ME_POFF)
            doPlayerSendCancel(cid, error_exhaust)
            return 0
        end
    else --If you are using potion exhaust
        if hasCondition(cid, CONDITION_EXHAUSTED) == 1 then
            doPlayerSendCancel(cid, error_exhaust)
            return 0
        end
    end

    ---------------------------END Check for Errors--------------------------------

    doSendMagicEffect(topos, ani)
    doPlayerAddHealth(item2.uid, math.random(minHealth, maxHealth))
    doPlayerAddMana(item2.uid, math.random(minMana, maxMana))
    if infinite == false then
        if item.type > 1 then
            doChangeTypeItem(item.uid,item.type-1)
        else
            doRemoveItem(item.uid,1)
        end
    end
end



--Exhaust System created by Alreth

--Edited by OsoSangre

function exhaust(cid, storeValue, exhaustTime)

    local newExhaust = os.time()

    local oldExhaust = getPlayerStorageValue(cid, storeValue)

    if (oldExhaust == nil or oldExhaust < 0) then

        oldExhaust = 0

    end

    if (exhaustTime == nil or exhaustTime < 0) then

        exhaustTime = 1

    end

    diffTime = os.difftime(newExhaust, oldExhaust)

    if (diffTime >= exhaustTime) then

        setPlayerStorageValue(cid, storeValue, newExhaust)

        return 1

    else

        return 0

    end

end