function isRookie(cid)
	return isInArray({0}, getPlayerVocation(cid))
end

function isSorcerer(cid)
	return isInArray({1, 2, 3, 4, 5}, getPlayerVocation(cid))
end

function isDruid(cid)
	return isInArray({6, 7, 8, 9, 10}, getPlayerVocation(cid))
end

function isPaladin(cid)
	return isInArray({11, 12, 13, 14, 15}, getPlayerVocation(cid))
end

function isKnight(cid)
	return isInArray({16, 17, 18, 19, 20}, getPlayerVocation(cid))
end
