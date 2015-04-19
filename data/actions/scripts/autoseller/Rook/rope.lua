function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 50) == 1 then
           doPlayerAddItem(cid,2120,1)
       else
           doPlayerSendCancel(cid, "You need 50 gp.")
       end
   
       return 1
   end