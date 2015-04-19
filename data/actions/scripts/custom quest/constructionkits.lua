local constructionKit =	{3901, 3902, 3903, 3904, 3905, 3906, 3908, 3909, 3910, 3911, 3912, 3913, 3914, 3917, 3918, 3919, 3926, 3927, 3928, 3929, 3931, 3932, 3933, 3935, 3937, 3907, 3915, 3920, 3921, 3923, 3934, 3936, 3938}
local constructedFurniture = {1652, 1658, 1666, 1670, 3813, 3817, 2602, 1614, 1615, 1616, 1619, 3805, 3807, 2084, 2095, 3809, 2080, 2098, 2104, 2101, 2105, 1724, 1728, 1775, 2064, 3821, 1738, 3811, 1716, 1774, 1732, 3828, 1750}
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if fromPosition.x == CONTAINER_POSITION then
		doPlayerSendCancel(cid, "Put the construction kit on the ground first.")
	else
		for i = 0, table.maxn(constructionKit) do
			if constructionKit[i] == item.itemid then
				doTransformItem(item.uid, constructedFurniture[i])
				doSendMagicEffect(fromPosition, CONST_ME_POFF)
				return TRUE
			end
		end
		return FALSE
	end
	return TRUE
end