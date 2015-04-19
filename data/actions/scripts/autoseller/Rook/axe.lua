function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 70) == 1 then
           doPlayerAddItem(cid,2386,1)
       else
           doPlayerSendCancel(cid, "You need 70 gp.")
       end
   
       return 1
   end