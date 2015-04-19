function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 500) == 1 then
           doPlayerAddItem(cid,2510,1)
       else
           doPlayerSendCancel(cid, "You need 500 gp.")
       end
   
       return 1
   end