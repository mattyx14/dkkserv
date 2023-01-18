local commands = TalkAction("!commands")

function commands.onSay(player, words, param)
	if player then
		local text = 'Player Commands: \n\n'
		text = text .. '!addondoll \n'
		text = text .. '!emote \n'
		text = text .. '!mountsdoll \n'
		text = text .. '!online \n'
		text = text .. '!shop \n'
		text = text .. '!serverinfo \n'
		text = text .. '!tibiatimer \n\n'
		player:showTextDialog(2818, text)
	end
	return false
end

commands:register()