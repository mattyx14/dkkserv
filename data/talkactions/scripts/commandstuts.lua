function onSay(cid, words, param)
	
	local	text = "Los comandos que puede hacer bienen en la siguiente parte:\n"
	local	cmd = "All Commands Players + Tutors +\n/reload\n/a\n/gethouse\n/b\n/raid\n/c\n/up\n/down"
	local totaltext = text .. cmd
	doPlayerPopupFYI(cid, "Player Commands:\n" .. totaltext)
	--doShowTextDialog(cid, 2175, totaltext) instead of popup you can use a book instead just comment out the line above and uncomment this one
	return TRUE
end