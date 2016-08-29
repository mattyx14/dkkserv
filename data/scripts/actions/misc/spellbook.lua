local spellbook = Action()

function spellbook.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local count = getPlayerInstantSpellCount(player)
	local text = ""
	local spells = {}
	for i = 0, count - 1 do
		local spell = getPlayerInstantSpellInfo(player, i)
		if spell.level ~= 0 then
			if spell.manapercent > 0 then
				spell.mana = spell.manapercent .. "%"
			end
			spells[#spells + 1] = spell
		end
	end

	table.sort(spells, function(a, b) return a.level < b.level end)

	local prevLevel = -1
	for i, spell in ipairs(spells) do
		local line = ""
		if prevLevel ~= spell.level then
			if i ~= 1 then
				line = "\n"
			end
			line = line .. "Spells for Level " .. spell.level .. "\n"
			prevLevel = spell.level
		end
		text = text .. line .. "  " .. spell.words .. " - " .. spell.name .. " : " .. spell.mana .. "\n"
	end

	player:showTextDialog(item:getId(), text)
	return true
end

spellbook:id(2175, 6120, 8900, 8901, 8902, 8903, 8904, 8918, 12647, 16112, 18401, 22422, 22423, 22424)
spellbook:register()
