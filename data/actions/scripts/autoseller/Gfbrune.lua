function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 150) == 1 then
           doPlayerAddItem(cid,2304,3)
       else
           doPlayerSendCancel(cid, "You need 150 gp.")
       end
   
       return 1
   end