function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 20000) == 1 then
           doPlayerAddItem(cid,2197,10)
       else
           doPlayerSendCancel(cid, "You need 20000 gp.")
       end
   
       return 1
   end