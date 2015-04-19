function onUse(cid, item, frompos, item2, topos)

   tilepos = {x=495, y=417, z=15, stackpos=1} -- Edit coordinates!
   tile = getThingfromPos(tilepos)
   if(item.itemid == 1945 and item.uid == 1000) then
      doTransformItem(tile.uid,105) -- Edit newid to the new tile id
      doTransformItem(item.uid,1946)
   elseif(item.itemid == 1946 and item.uid == 1000) then
      doTransformItem(tile.uid,1304) -- Edit newid to the original tile id
      doTransformItem(item.uid,1945)
   end

end