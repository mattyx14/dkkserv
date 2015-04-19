function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 12000) == 1 then
           doPlayerAddItem(cid,2173,1)
       else
           doPlayerSendCancel(cid, "You need 12000 gp.")
       end
   
       return 1
   end