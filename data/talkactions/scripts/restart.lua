function onSay(cid, words, param)
	local minid = 3
	local restartTime = 1000*60*5
	local message = "Server will restart in 5 minutes, data will be saved"
	local messageStop = "Restart process has been stopped"
	if getPlayerGroupId(cid) >= minid then
		if param == "now" then
			saveAndRestart(cid)
		elseif param == "stop" then
			broadcastMessage(messageStop)
			stopEvent(saverestart)
		else
			broadcastMessage(message)
			saverestart = addEvent(saveAndRestart, restartTime, cid)
		end
	end
end

function returnDate()
	curdate = os.date("*t")
	if curdate.day < 10 then
		curdate.day = "0"..curdate.day
	end
	if curdate.month < 10 then
		curdate.month = "0"..curdate.month
	end
	if curdate.hour < 10 then
		curdate.hour = "0"..curdate.hour
	end
	if curdate.min < 10 then
		curdate.min = "0"..curdate.min
	end
	return curdate
end

function saveAndRestart(cid)
	file = io.open("data/logs/restarts.txt", "r")
	if file == nil then
		file = io.open("data/logs/restarts.txt", "w")
	end
	text = file:read()
	if text == nil then
		text = ""
	end
	file:close()
	curdate = returnDate()
	newdate = "["..curdate.day.."/"..curdate.month.."/"..curdate.year.." "..curdate.hour..":"..curdate.min.."]"
	newtext = text..newdate.."Server restarted by "..getPlayerName(cid).."\n"
	file = io.open("data/logs/restarts.txt", "w")
	file:write(newtext)
	file:close()
	savePlayers()
	io.popen("LuaRestarter.exe")
end
