function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 1200) == 1 then
           doPlayerAddItem(cid,2690,100)
       else
           doPlayerSendCancel(cid, "You need 1200 gp.")
       end
   
       return 1
   end