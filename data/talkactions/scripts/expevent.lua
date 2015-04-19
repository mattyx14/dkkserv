config = {
minExp = 5, -- lowest multiple of exp
maxExp = 6,  -- highest multiple of exp
changeTime = 10 -- how many time (minutes) for change
}

function changeExpRate(params)
    for i, pid in ipairs(params.players) do
            setPlayerExtraExpRate(pid, params.expRate)          
    end
    doBroadcastMessage("The exp rate set to "..params.expRate.." next exp rate update in next "..config.changeTime.." minutes!", MESSAGE_STATUS_WARNING)
    setGlobalStorageValue(55555, params.expRate)
    addEvent(changeExpRate,(config.changeTime*60*1000), {players=params.players, expRate=math.random(config.minExp, config.maxExp)})
end

function onSay(cid, words, param)
    changeExpRate({players=getPlayersOnline(), expRate=math.random(config.minExp, config.maxExp)})
end  