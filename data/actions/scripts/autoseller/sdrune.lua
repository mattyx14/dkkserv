function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 300) == 1 then
           doPlayerAddItem(cid,2268,2)
       else
           doPlayerSendCancel(cid, "You need 300 gp.")
       end
   
       return 1
   end