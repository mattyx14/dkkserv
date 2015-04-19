function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 100000) == 1 then
           doPlayerAddItem(cid,2399,100)
       else
           doPlayerSendCancel(cid, "You need 100000 gp.")
       end
   
       return 1
   end