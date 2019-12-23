local ids = {{2376, 2404}, {2406, 2419}, {2421, 2453}}
local destroy = Action()

function destroy.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	return destroyItem(player, target, toPosition)
end

for i = 1, #ids do
	if type(i) == "table" then
		for x = ids[i][1], ids[i][2] do
			destroy:id(x)
		end
	else
		destroy:id(i)
	end
end
destroy:register()
