function onThink(interval, lastExecution)
    if (tonumber(os.date("%d")) ~= getGlobalStorageValue(23456)) then
        setGlobalStorageValue(23456, (tonumber(os.date("%d"))))
        db.executeQuery("UPDATE `players` SET `onlinetime7`=players.onlinetime6, `onlinetime6`=players.onlinetime5, `onlinetime5`=players.onlinetime4, `onlinetime4`=players.onlinetime3, `onlinetime3`=players.onlinetime2, `onlinetime2`=players.onlinetime1, `onlinetime1`=players.onlinetimetoday, `onlinetimetoday`=0;")
        db.executeQuery("UPDATE `players` SET `exphist7`=players.exphist6, `exphist6`=players.exphist5, `exphist5`=players.exphist4, `exphist4`=players.exphist3, `exphist3`=players.exphist2, `exphist2`=players.exphist1, `exphist1`=players.experience-players.exphist_lastexp, `exphist_lastexp`=players.experience;")
    end
    db.executeQuery("UPDATE `players` SET `onlinetimetoday`=players.onlinetimetoday+60, `onlinetimeall`=players.onlinetimeall+60 WHERE `online` = 1;")
    return TRUE
end 