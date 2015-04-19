function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 105) == 1 then
           doPlayerAddItem(cid,2672,3)
       else
           doPlayerSendCancel(cid, "You need 105 gp.")
       end
   
       return 1
   end