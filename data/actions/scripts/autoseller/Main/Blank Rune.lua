function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 10) == 1 then
           doPlayerAddItem(cid,2260,1)
       else
           doPlayerSendCancel(cid, "You need 10 gp.")
       end
   
       return 1
   end