function onSay(cid, words, param)
	
	local	text = "Los comandos que puede hacer bienen en la siguiente parte:\n"
	local	cmd = "!buy 'aol\n!buy 'backpack\n!frags\n!buyhouse\n!sellhouse 'name of player'\n!createguild 'name of guild'\n!joinguild 'name of guild'\n!buypremium\n!leavehouse\n!online\n!changender\n!uptime\n!deathlist 'name of player'\n!serverinfo\n/bg 'mensageplayer\n!q\n/uptime\n!commandtutor (Only Tutors)\n!commandtutors (Only Tutors Superior)"
	local totaltext = text .. cmd
	doPlayerPopupFYI(cid, "Player Commands:\n" .. totaltext)
	--doShowTextDialog(cid, 2175, totaltext) instead of popup you can use a book instead just comment out the line above and uncomment this one
	return TRUE
end