function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 30) == 1 then
           doPlayerAddItem(cid,2482,1)
       else
           doPlayerSendCancel(cid, "You need 30 gp.")
       end
   
       return 1
   end