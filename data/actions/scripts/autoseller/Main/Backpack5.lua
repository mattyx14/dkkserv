function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 20) == 1 then
           doPlayerAddItem(cid,2003,1)
       else
           doPlayerSendCancel(cid, "You need 20 gp.")
       end
   
       return 1
   end