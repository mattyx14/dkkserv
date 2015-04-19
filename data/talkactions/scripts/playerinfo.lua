function onSay(cid, words, param)
if(param == "") then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
        return TRUE
    end

    local pid = getPlayerByNameWildcard(param)
    if(pid == 0 or (isPlayerGhost(pid) == TRUE and getPlayerAccess(pid) > getPlayerAccess(cid))) then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. param .. " not found.")
        return TRUE
    end
local sex = ""
if getPlayerSex(cid) == 1 then
sex = "Male"
else
sex = "Female"
end
local config = {
    accessToUse = 0,

    playerName = getCreatureName(pid),
    playerAccount = getPlayerAccount(pid),
    playerIp = getPlayerIp(pid),
    playerAccess = getPlayerAccess(pid),
    playerGuild = getPlayerGuildName(pid),
    playerGuildRank = getPlayerGuildRank(pid),
    playerFrags = getPlayerRedSkullTicks(pid),
    playerHealth = getCreatureHealth(pid),
    playerMaxHealth = getCreatureMaxHealth(pid),
    playerMana = getCreatureMana(pid),
    playerMaxMana = getCreatureMaxMana(pid),
    playerBaseSpeed = getCreatureBaseSpeed(pid),
    playerSpeed = getCreatureSpeed(pid),
    playerMaster = getCreatureMaster(pid),
    playerLevel = getPlayerLevel(pid),
    playerExp = getPlayerExperience(pid),
    playerMagLevel = getPlayerMagLevel(pid),
    playerTown = getTownName(getPlayerTown(pid)),
    playerNotations = getNotationsCount(playerAccount),
    playerVocation = getPlayerVocation(pid),
    playerVocationInfo = getVocationInfo(playerVocation),
    playerMoney = getPlayerMoney(pid),
    playerCrystal = getPlayerItemCount(pid, 2160),
    playerPlatinum = getPlayerItemCount(pid, 2152),
    playerGold = getPlayerItemCount(pid, 2148),
    playerBalance = getPlayerBalance(pid),
    playerGroup = getPlayerGroupName(pid),
    playerPremDays = getPlayerPremiumDays(pid)
}

if config.playerAccess >= config.accessToUse then

doPlayerPopupFYI(cid, "Information about " .. config.playerName .. "\n\nInformation about account.\n\nGroup: " .. config.playerGroup .. "\nAccount: " .. config.playerAccount .. "\nIP: " .. doConvertIntegerToIp(config.playerIp) .. " (" .. config.playerIp .. ")\nAccess: " .. config.playerAccess .. "\nNotations: " .. config.playerNotations .. "\nPremium Days: " .. config.playerPremDays .. "\n\nInformation about character.\n\nName: " .. config.playerName .."\nLevel: " .. config.playerLevel .. "\nExperience: " .. config.playerExp .."\nMagic level: " .. config.playerMagLevel .. "\nVocation: " .. getVocationInfo(config.playerVocation).name .. "\nSex: " .. sex .. "\nBase speed: " .. config.playerBaseSpeed .. "\nSpeed: " .. config.playerSpeed .. "\nTown: " .. config.playerTown .. "\nUnjustified frags: " .. config.playerFrags .. "\nGuild: " .. config.playerGuild .. "\nGuild rank: " .. config.playerGuildRank .. "\nHealth: " .. config.playerHealth .. " - " .. config.playerMaxHealth .. "\nMana: " .. config.playerMana .. " - " .. config.playerMaxMana .. "\n\nSkills:\nFist: " .. getPlayerSkillLevel(cid,0) .. "\nClub: " .. getPlayerSkillLevel(cid,1) .. "\nSword: " .. getPlayerSkillLevel(cid,2) .. "\nAxe: " .. getPlayerSkillLevel(cid,3) .. "\nDistance: " .. getPlayerSkillLevel(cid,4) .. "\nShielding: " .. getPlayerSkillLevel(cid,5) .. "\nFishing: " .. getPlayerSkillLevel(cid,6) .. "\n\nMoney:\nGold: " .. config.playerGold .. "\nPlatinum: " .. config.playerPlatinum .. "\nCrystal: " .. config.playerCrystal .. "\nTotal money: " .. config.playerMoney .. "\nBank balance: " .. config.playerBalance .. " ") 

else

doPlayerSendTextMessage(cid,22,"You cannot execute this command.")
    
    end

end  