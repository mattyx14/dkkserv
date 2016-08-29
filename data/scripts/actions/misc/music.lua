local ids = {2332, 2364, {2070, 2078}, {2080, 2085}, {2367, 2368}, {2370, 2373}}
local music = Action()

function music.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	-- TODO: Different music effect for different instruments.
	item:getPosition():sendMagicEffect(CONST_ME_SOUND_BLUE)
	return true
end

for i = 1, #ids do
	if type(ids[i]) == "table" then
		for x = ids[i][1], ids[i][2] do
			music:id(x)
		end
	else
		music:id(ids[i])
	end
end
music:register()
