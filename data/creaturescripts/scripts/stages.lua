config = { 
    vipSystem = "YES", -- Vip System Working?
    vipStorage = 64621, -- STORAGE VALUE of Vips
}
stages = {
    normal = {
        [1] = 7,
        [9] = 6,
        [21] = 5,
        [51] = 4,
        [101] = 5,
        [111] = 4,
        [301] = 5,
        [341] = 4,
        [401] = 6,
        [411] = 5,
        [441] = 5,
        [461] = 3,
        [471] = 4,
        [501] = 6,
        [511] = 5,
        [520] = 6,
        [601] = 7,
    },    
    premium = {
        [1] = 7,
        [9] = 6,
        [21] = 5,
        [51] = 4,
        [101] = 5,
        [111] = 4,
        [301] = 5,
        [341] = 4,
        [401] = 6,
        [411] = 5,
        [441] = 5,
        [461] = 3,
        [471] = 4,
        [501] = 6,
        [511] = 5,
        [520] = 6,
        [601] = 7,
    },
    vip = {
        [1] = 8,
        [9] = 7,
        [21] = 6,
        [51] = 5,
        [101] = 6,
        [111] = 5,
        [301] = 6,
        [341] = 5,
        [401] = 7,
        [411] = 6,
        [441] = 5,
        [461] = 4,
        [471] = 5,
        [501] = 7,
        [511] = 6,
        [520] = 7,
        [601] = 8,
        [631] = 9,
    },
}
function onAdvance(cid, skill, oldlevel, newlevel)
    if isPremium(cid) then
        stage = stages.premium
    elseif getPlayerStorageValue(cid, config.vipStorage) > 0 and string.upper(config.vipSystem) == "YES" then
        stage = stages.vip
    else
        stage = stages.normal
    end
    
    if stage[newlevel] then
        setPlayerExtraExpRate(cid, stage[newlevel])
    end

end 