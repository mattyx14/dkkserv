function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 75) == 1 then
           doPlayerAddItem(cid,2667,5)
       else
           doPlayerSendCancel(cid, "You need 75 gp.")
       end
   
       return 1
   end