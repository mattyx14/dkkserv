-- Tiempo por default en segundos --
	default_jail = 360
-- Group id necesario para encarcelar a alguien --
	grouprequired = 3
-- StorageValue that the player gets --
	jailedstoragevalue_time = 1338
	jailedstoragevalue_bool = 1339
-- Posicion de la carcel: --
	jailpos = { x = xxx, y = xxx, z =xxx }
-- Posicion cuando el player sale de la carcel: --
	unjailpos = { x = 160, y = 50, z =7 }
-- auto kicker, NO EDITAR
	jail_list = {}
	jail_list_work = 0

function checkJailList(param)
	addEvent(checkJailList, 1000, {})

for targetID,player in ipairs(jail_list) do
if isPlayer(player) == true then
		if getPlayerStorageValue(player, jailedstoragevalue_time) < os.time() then
				doTeleportThing(player, unjailpos, true)
				setPlayerStorageValue(player, jailedstoragevalue_time, 0)
				setPlayerStorageValue(player, jailedstoragevalue_bool, 0)
			table.remove(jail_list,targetID)
				doPlayerSendTextMessage(player,MESSAGE_STATUS_CONSOLE_ORANGE,'Has salido de la carcel! Nos vemos luego :)')
			end
		else
			table.remove(jail_list,targetID)
		end
	end
end

function onSay(cid, words, param)

if jail_list_work == 0 then
	jail_list_work = addEvent(checkJailList, 1000, {})
end

if param == '' and (words == '!unjail' or words == '/unjail') then
if getPlayerStorageValue(cid, jailedstoragevalue_time) > os.time() then
	doPlayerSendTextMessage ( cid, MESSAGE_INFO_DESCR, 'Tu has sido encarcelado hasta ' .. os.date("%H:%M:%S", getPlayerStorageValue(cid, jailedstoragevalue_time)) .. ' (ahora son las: ' .. os.date("%H:%M:%S", os.time()) .. ').')
else

if getPlayerStorageValue(cid, jailedstoragevalue_bool) == 1 then
	table.insert(jail_list,cid)
		doPlayerSendTextMessage ( cid, MESSAGE_INFO_DESCR, 'Saldras de la carcel en 1 segundo')
	else
		doPlayerSendTextMessage ( cid, MESSAGE_INFO_DESCR, 'No estas encarcelado')
	end
end
	return true
end

local jail_time = -1
for word in string.gmatch(tostring(param), "(%w+)") do
	if tostring(tonumber(word)) == word then
		jail_time = tonumber(word)
	end
end

local isplayer = getPlayerByName(param)
		if isPlayer(isplayer) ~= true then
			isplayer = getPlayerByName(string.sub(param, string.len(jail_time)+1))

		if isPlayer(isplayer) ~= true then
			isplayer = getPlayerByName(string.sub(param, string.len(jail_time)+2))

		if isPlayer(isplayer) ~= true then
			isplayer = getPlayerByName(string.sub(param, string.len(jail_time)+3))
		end
	end
end

if jail_time ~= -1 then
		jail_time = jail_time * 60
	else
		jail_time = default_jail
end

if words == '!jail' or words == '/jail' then
	if getPlayerGroupId ( cid ) >= grouprequired then
		if isPlayer(isplayer) == true then
			doTeleportThing(isplayer, jailpos, true)
			setPlayerStorageValue(isplayer, jailedstoragevalue_time, os.time()+jail_time)
			setPlayerStorageValue(isplayer, jailedstoragevalue_bool, 1)
		table.insert(jail_list,isplayer)
			doPlayerSendTextMessage ( cid, MESSAGE_INFO_DESCR, 'Tu encacelaste a '.. getCreatureName(isplayer) ..' hasta las ' .. os.date("%H:%M:%S", getPlayerStorageValue(isplayer, jailedstoragevalue_time)) .. ' (ahora son las: ' .. os.date("%H:%M:%S", os.time()) .. ').')
			doPlayerSendTextMessage ( isplayer, MESSAGE_INFO_DESCR, 'Tu has sido encarcelado por '.. getCreatureName(cid) ..' hasta las ' .. os.date("%H:%M:%S", getPlayerStorageValue(isplayer, jailedstoragevalue_time)) .. ' (ahora son las: ' .. os.date("%H:%M:%S", os.time()) .. ').')
		return true
	else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Este player no existe o esta offline")
	return false
end
	else
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "No tienes acceso para encarcelar jugadores.")
	return false
end

elseif words == '!unjail' or words == '/unjail' then
	if getPlayerGroupId ( cid ) >= grouprequired then
		if isPlayer(isplayer) == true then
			doTeleportThing(isplayer, unjailpos, true)
			setPlayerStorageValue(isplayer, jailedstoragevalue_time, 0)
			setPlayerStorageValue(isplayer, jailedstoragevalue_bool, 0)
			table.remove(jail_list,targetID)
					doPlayerSendTextMessage(isplayer,MESSAGE_STATUS_CONSOLE_GREEN,getCreatureName(cid) .. ' te permiten salir de la carcel! Nos vemos luego :)')
					doPlayerSendTextMessage ( cid, MESSAGE_INFO_DESCR, 'Desencarcelaste a '.. getCreatureName(isplayer) ..'.')
			else
					doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Este player no existe o esta offline")
				return false
			end
				else
					doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "No tienes acceso para encarcelar jugadores")
				return false
			end
		end
	return false
end	