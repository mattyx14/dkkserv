function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 25) == 1 then
           doPlayerAddItem(cid,2595,1)
       else
           doPlayerSendCancel(cid, "You need 25 gp.")
       end
   
       return 1
   end