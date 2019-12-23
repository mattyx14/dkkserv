local transformItems = {
	[3743] = 4404, [4404] = 3743
}

local transform = Action()

function transform.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local transformIds = transformItems[item:getId()]
	if not transformIds then
		return false
	end

	item:transform(transformIds)
	return true
end

for k,v in pairs(transformItems) do
	transform:id(k)
end
transform:register()
