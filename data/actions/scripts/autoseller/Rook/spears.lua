function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 100) == 1 then
           doPlayerAddItem(cid,2389,5)
       else
           doPlayerSendCancel(cid, "You need 100 gp.")
       end
   
       return 1
   end