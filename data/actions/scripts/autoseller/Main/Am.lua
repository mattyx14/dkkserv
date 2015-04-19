function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 6000) == 1 then
           doPlayerAddItem(cid,2316,100)
       else
           doPlayerSendCancel(cid, "You need 6000 gp.")
       end
   
       return 1
   end