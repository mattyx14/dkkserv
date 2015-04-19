-- script by nicaw

function onUse(cid, item, frompos, item2, topos)

-- akmens id
rockid = 1355

-- plytele ant kurios stovi ciuvas koordinates
playerposition = {x=953, y=1089, z=8, stackpos=253}

-- o cia yra akmens koordinates
rockposition = {x=960, y=1093, z=8, stackpos=1}

player = getThingfromPos(playerposition)
rock   = getThingfromPos(rockposition)
rockposition.stackpos=253
rockman= getThingfromPos(rockposition)

if rock.itemid ~= rockid then
	if rockman.itemid <= 0 then
		doCreateItem(rockid,1,rockposition)

		if item.itemid == 1945 then
		doTransformItem(item.uid,1946)
		else
		doTransformItem(item.uid,1945)
		end

		else
		doSendMagicEffect(topos,2)
		doPlayerSendCancel(cid,"Someone is blocking passage!")
		end
else    if player.itemid > 0 then
		doRemoveItem(rock.uid,1)

		if item.itemid == 1945 then
		doTransformItem(item.uid,1946)
		else
		doTransformItem(item.uid,1945)
		end

		else
		doSendMagicEffect(topos,2)
		doPlayerSendCancel(cid,"Sorry, not possible.")
		end
end

return 1
end