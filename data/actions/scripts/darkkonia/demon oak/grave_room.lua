------Made by BomBa
 local roomPos  = {x = 466, y = 1424, z = 8}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.uid == 30330 then 
	if(getPlayerStorageValue(cid, 20000) == TRUE) and (getPlayerStorageValue(cid, 20001) == TRUE) and (getPlayerStorageValue(cid, 20002) == TRUE) and (getPlayerStorageValue(cid, 20003) == TRUE) then
	   doTeleportThing(cid, roomPos, TRUE)
	   doSendMagicEffect(roomPos, CONST_ME_TELEPORT)
  end
 end
  return TRUE
end
