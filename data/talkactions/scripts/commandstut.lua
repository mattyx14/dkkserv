function onSay(cid, words, param)
	
	local	text = "Los comandos que puede hacer bienen en la siguiente parte:\n"
	local	cmd = "All Commands Players +\n/cliport\n/clean\n/t\n!pos\n/baninfo 'name of player'\n/town 'town name'\n/goto 'player name'\n/mc\n/info 'name of player"
	local totaltext = text .. cmd
	doPlayerPopupFYI(cid, "Player Commands:\n" .. totaltext)
	--doShowTextDialog(cid, 2175, totaltext) instead of popup you can use a book instead just comment out the line above and uncomment this one
	return TRUE
end