function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 15000) == 1 then
           doPlayerAddItem(cid,2396,3)
       else
           doPlayerSendCancel(cid, "You need 25000 gp.")
       end
   
       return 1
   end