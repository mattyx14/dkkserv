-- configs
local mintoanswer = 2 -- minutes to answer anti bot system
local delayAntiBot = 60 -- minutes of delay of delayAntiBot
local maxgroupid = 1 -- groupid higher than this don't have antiBotSystem Activated
local prisionpos = {x=1490,y=691,z=13} -- if don't answer, go to this pos
local prisionminutes = 360 -- time inside the prision
local templepos = {x=941, y=1001, z=7} -- after the prisionminutes, back to this position (temple is recommended)
-- end configs

-- local variables
local storages = {first_num = 20123, second_num = 20124, result = 20125, answer = 20126, prisioned = 20127, prisiontime = 20128, wrong_answers = 20129}
-- end local variables


function onLogin(cid)
local prisioned = getPlayerStorageValue(cid,storages.prisioned)
if (prisioned == 1) then
local prisiontime = getPlayerStorageValue(cid,storages.prisiontime)
local timenow = os.time()
if (timenow >= prisiontime) then
setPlayerStorageValue(cid,storages.prisiontime,0)
setPlayerStorageValue(cid,storages.prisioned,0)
doTeleportThing(cid, templepos)
else
prisionEvent = addEvent(checkprisioned,1000,{cid=cid})
doTeleportThing(cid, prisionpos)
end
end


if (delayAntiBot <= mintoanswer) then
debugPrint("Error! Anti Bot System debugs: variable delayAntiBot need to be higher than mintoanswer.")
else
if (getPlayerGroupId(cid) <= maxgroupid) then
antiBotEvent = addEvent(antiBot,1000,{cid=cid})
else
doPlayerSendTextMessage(cid, 20, "Players con posicio superior a la de player ".. maxgroupid .." no tienen este sistema.")
end
end
return TRUE
end

function onLogout(cid)
stopEvent(prisionEvent)
stopEvent(antiBotEvent)
stopEvent(checkAnswerEvent)


setPlayerStorageValue(cid,storages.first_num,0)
setPlayerStorageValue(cid,storages.second_num,0)
setPlayerStorageValue(cid,storages.result,0)
setPlayerStorageValue(cid,storages.answer,0)
setPlayerStorageValue(cid,storages.wrong_answers,0)
return TRUE
end

function antiBot(parameters)
local cid = parameters.cid

local playerpos = getCreaturePosition(cid)
local playerpz = getTilePzInfo(playerpos)
local playername = getPlayerName(cid)
local prisioned = getPlayerStorageValue(cid,storages.prisioned)
if (playerpz ~= 1 and prisioned ~= 1) then
local first_num = math.random(1,9)
local second_num = math.random(1,9)
local result = first_num+second_num

setPlayerStorageValue(cid,storages.first_num,first_num)
setPlayerStorageValue(cid,storages.second_num,second_num)
setPlayerStorageValue(cid,storages.result,result)
doPlayerSendTextMessage(cid, 20, "Yunie Anti Bot System: Hola, "..playername.."! Tu tienes ".. mintoanswer .." minutos(s) para desirme cuanto es ".. first_num .." + ".. second_num ..". Solo tienes que decir esto: !antibot \"resultado.")
doPlayerSendTextMessage(cid, 20, "Yunie Anti Bot System: Ejemplo: 20+20 = 40, y decir !antibot \"40.")
checkAnswerEvent = addEvent(checkAnswer,mintoanswer*60*1000,{cid=cid})
end
antiBotEvent = addEvent(antiBot,delayAntiBot*60*1000,{cid=cid})
end

function checkAnswer(parameters)
local cid = parameters.cid
local first_num, second_num, result, answer, prisioned = getPlayerStorageValue(cid,storages.first_num), getPlayerStorageValue(cid,storages.second_num), getPlayerStorageValue(cid,storages.second_num), getPlayerStorageValue(cid,storages.result), getPlayerStorageValue(cid,storages.answer), getPlayerStorageValue(cid,storages.prisioned)
local wrong_answers = getPlayerStorageValue(cid,storages.wrong_answers)
if (wrong_answers > 3) then
doTeleportThing(cid, prisionpos)
setPlayerStorageValue(cid,storages.wrong_answers,0)
setPlayerStorageValue(cid,storages.first_num,0)
setPlayerStorageValue(cid,storages.second_num,0)
setPlayerStorageValue(cid,storages.result,0)
setPlayerStorageValue(cid,storages.answer,0)
setPlayerStorageValue(cid,storages.prisioned,1)
setPlayerStorageValue(cid,storages.prisiontime,os.time()+(prisionminutes*60))
doPlayerSendTextMessage(cid, 20, "Se acabo tu tiempo! Seras encerrado por ".. prisionminutes .." minute(s) por responder muchas veces mal.")
prisionEvent = addEvent(checkprisioned,1000,{cid=cid})
else
if (answer ~= 1 and prisioned ~= 1 and result > 0) then
doTeleportThing(cid, prisionpos)
setPlayerStorageValue(cid,storages.first_num,0)
setPlayerStorageValue(cid,storages.second_num,0)
setPlayerStorageValue(cid,storages.result,0)
setPlayerStorageValue(cid,storages.answer,0)
setPlayerStorageValue(cid,storages.prisioned,1)
setPlayerStorageValue(cid,storages.wrong_answers,0)
setPlayerStorageValue(cid,storages.prisiontime,os.time()+(prisionminutes*60))
doPlayerSendTextMessage(cid, 20, "Se acabo tu tiempo! Seras encerrado por ".. prisionminutes .." minuto(s).")
prisionEvent = addEvent(checkprisioned,1000,{cid=cid})
else
setPlayerStorageValue(cid,storages.first_num,0)
setPlayerStorageValue(cid,storages.second_num,0)
setPlayerStorageValue(cid,storages.result,0)
setPlayerStorageValue(cid,storages.answer,0)
setPlayerStorageValue(cid,storages.prisioned,0)
setPlayerStorageValue(cid,storages.wrong_answers,0)
doPlayerSendTextMessage(cid, 20, "Anti Bot System: Esta bien, pero en unos minutos se te pedira nuevamente.")
end
end
end

function checkprisioned(parameters)
local cid = parameters.cid
local prisioned = getPlayerStorageValue(cid,storages.prisioned)
local prisiontime = getPlayerStorageValue(cid,storages.prisiontime)
local timenow = os.time()
if (prisioned == 1) then
if (timenow >= prisiontime) then
doPlayerSendTextMessage(cid, 20, "Ya que tu tiempo en la pision termine! Seras enviado nuevamente a la cuidad (Recuerda si caes mas de 3 veces seras eliminado por tramposo).")
else
prisionEvent = addEvent(checkprisioned,1000,{cid=cid})
end
end
end
