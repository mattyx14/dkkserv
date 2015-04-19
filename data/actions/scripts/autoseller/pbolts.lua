function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 50) == 1 then
           doPlayerAddItem(cid,2547,30)
       else
           doPlayerSendCancel(cid, "You need 30 gp.")
       end
   
       return 1
   end