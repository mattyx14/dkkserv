function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 50000) == 1 then
           doPlayerAddItem(cid,7366,100)
       else
           doPlayerSendCancel(cid, "You need 50000 gp.")
       end
   
       return 1
   end