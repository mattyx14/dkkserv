function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 55) == 1 then
           doPlayerAddItem(cid,2666,5)
       else
           doPlayerSendCancel(cid, "You need 55 gp.")
       end
   
       return 1
   end