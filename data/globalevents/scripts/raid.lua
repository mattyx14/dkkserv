local storage = 65799
local raids = {
	"Ghazbaran",
	"Morgaroth",
	"Orshabaal",
	"Ferumbras",
	"verminor",
	"azerus",
	"infernos",
	"Lucifer",
	"ape",
	"quara",
	"pirate",
	"orc",
	"elfs",
	"cyclop",
	"hero",
	"spider",
	"scarabs"
}

function onThink(interval, lastExecution, thinkInterval)
	if getGlobalStorageValue(storage) == -1 or getGlobalStorageValue(storage) < os.time() then
		executeRaid(raids[math.random(1, #raids)])
		setGlobalStorageValue(storage, os.time() + 9 * 60 * 60)
	end

	return true
end
