function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 60) == 1 then
           doPlayerAddItem(cid,2480,1)
       else
           doPlayerSendCancel(cid, "You need 60 gp.")
       end
   
       return 1
   end