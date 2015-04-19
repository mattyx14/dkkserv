function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 35) == 1 then
           doPlayerAddItem(cid,2597,1)
       else
           doPlayerSendCancel(cid, "You need 35 gp.")
       end
   
       return 1
   end