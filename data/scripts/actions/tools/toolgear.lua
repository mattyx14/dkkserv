local toolgear = Action()

function toolgear.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	return rope.onUse(player, item, fromPosition, target, toPosition, isHotkey)
		or shovel.onUse(player, item, fromPosition, target, toPosition, isHotkey)
		or pick.onUse(player, item, fromPosition, target, toPosition, isHotkey)
		or machete.onUse(player, item, fromPosition, target, toPosition, isHotkey)
		or scythe.onUse(player, item, fromPosition, target, toPosition, isHotkey)
end

toolgear:id(10511, 10513, 10515)
toolgear:register()
