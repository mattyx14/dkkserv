function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 85) == 1 then
           doPlayerAddItem(cid,2671,3)
       else
           doPlayerSendCancel(cid, "You need 85 gp.")
       end
   
       return 1
   end