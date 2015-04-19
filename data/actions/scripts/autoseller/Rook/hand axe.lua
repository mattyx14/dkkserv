function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 60) == 1 then
           doPlayerAddItem(cid,2380,1)
       else
           doPlayerSendCancel(cid, "You need 60 gp.")
       end
   
       return 1
   end