function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 5) == 1 then
           doPlayerAddItem(cid,2599,1)
       else
           doPlayerSendCancel(cid, "You need 5 gp.")
       end
   
       return 1
   end