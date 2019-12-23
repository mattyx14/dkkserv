local action = Action()

function action.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	return player:enterMarket()
end

action:id(14405)
action:register()
