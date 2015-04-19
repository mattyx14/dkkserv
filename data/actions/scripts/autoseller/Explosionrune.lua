function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 250) == 1 then
           doPlayerAddItem(cid,2313,3)
       else
           doPlayerSendCancel(cid, "You need 250 gp.")
       end
   
       return 1
   end