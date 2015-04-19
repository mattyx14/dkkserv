function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 1000) == 1 then
           doPlayerAddItem(cid,2209,1)
       else
           doPlayerSendCancel(cid, "You need 1000 gp.")
       end
   
       return 1
   end