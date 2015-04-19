function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 3000) == 1 then
           doPlayerAddItem(cid,2672,100)
       else
           doPlayerSendCancel(cid, "You need 3000 gp.")
       end
   
       return 1
   end